.class final Lorg/codegist/crest/security/oauth/v1/OAuthsV1;
.super Ljava/lang/Object;
.source "OAuthsV1.java"


# static fields
.field private static final AFTER_PROTOCOL_INDEX:I = 0x8

.field static final EMPTY_HTTP_PAIRS:[Lorg/codegist/crest/param/EncodedPair;

.field private static final ENC:Ljava/nio/charset/Charset;

.field private static final IGNORE_POISON:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private static final LOGGER:Lorg/codegist/common/log/Logger;

.field private static final SIGN_METH:Ljava/lang/String; = "HMAC-SHA1"

.field private static final SIGN_METH_4_J:Ljava/lang/String; = "HmacSHA1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/codegist/crest/param/EncodedPair;

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->EMPTY_HTTP_PAIRS:[Lorg/codegist/crest/param/EncodedPair;

    .line 54
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    .line 55
    const-class v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->LOGGER:Lorg/codegist/common/log/Logger;

    .line 56
    new-instance v0, Lorg/codegist/crest/security/oauth/OAuthToken;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/codegist/crest/security/oauth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->IGNORE_POISON:Lorg/codegist/crest/security/oauth/OAuthToken;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 76
    const/16 v5, 0x3f

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 78
    .local v2, "index":I
    move-object v3, p0

    .line 79
    .local v3, "retVal":Ljava/lang/String;
    if-eq v7, v2, :cond_0

    .line 80
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 82
    :cond_0
    const/16 v5, 0x2f

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 83
    .local v4, "slashIndex":I
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "baseURL":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 85
    .local v1, "colonIndex":I
    if-eq v7, v1, :cond_1

    .line 87
    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ":80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 90
    :cond_2
    const-string v5, "https://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ":443"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 92
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static varargs oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;
    .locals 7
    .param p0, "variant"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;
    .param p1, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "parameters"    # [Lorg/codegist/crest/param/EncodedPair;
    .param p5, "extrasOAuthParams"    # [Lorg/codegist/crest/param/EncodedPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/security/oauth/v1/VariantProvider;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/config/MethodType;",
            "Ljava/lang/String;",
            "[",
            "Lorg/codegist/crest/param/EncodedPair;",
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
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 104
    sget-object v2, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->IGNORE_POISON:Lorg/codegist/crest/security/oauth/OAuthToken;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static varargs oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;
    .locals 4
    .param p0, "variant"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;
    .param p1, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p3, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "parameters"    # [Lorg/codegist/crest/param/EncodedPair;
    .param p6, "extrasOAuthParams"    # [Lorg/codegist/crest/param/EncodedPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/security/oauth/v1/VariantProvider;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/config/MethodType;",
            "Ljava/lang/String;",
            "[",
            "Lorg/codegist/crest/param/EncodedPair;",
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
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1, p2, p6}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauthParamsFor(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "oauthParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v2, "toSign":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-static {p1, p2, p3, p4, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->sign(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "signature":Ljava/lang/String;
    const-string v3, "oauth_signature"

    invoke-static {v3, v1}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-object v0
.end method

.method private static varargs oauthParamsFor(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;
    .locals 3
    .param p0, "variant"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;
    .param p1, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p3, "extras"    # [Lorg/codegist/crest/param/EncodedPair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/security/oauth/v1/VariantProvider;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
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
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    sget-object v1, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->IGNORE_POISON:Lorg/codegist/crest/security/oauth/OAuthToken;

    if-eq p2, v1, :cond_0

    .line 148
    const-string v1, "oauth_token"

    invoke-virtual {p2}, Lorg/codegist/crest/security/oauth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    const-string v1, "oauth_consumer_key"

    invoke-virtual {p1}, Lorg/codegist/crest/security/oauth/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    const-string v1, "oauth_timestamp"

    invoke-interface {p0}, Lorg/codegist/crest/security/oauth/v1/VariantProvider;->timestamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const-string v1, "oauth_nonce"

    invoke-interface {p0}, Lorg/codegist/crest/security/oauth/v1/VariantProvider;->nonce()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const-string v1, "oauth_version"

    const-string v2, "1.0"

    invoke-static {v1, v2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    return-object v0
.end method

.method static pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, v0}, Lorg/codegist/crest/util/Pairs;->toPair(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v0

    return-object v0
.end method

.method private static sign(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p0, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p1, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/config/MethodType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .local p4, "oauthParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    const/4 v10, 0x0

    .line 123
    invoke-static {p4}, Lorg/codegist/crest/util/Pairs;->sortByNameAndValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 125
    .local v6, "sorted":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-static {p3}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "signUri":Ljava/lang/String;
    const/16 v7, 0x26

    const/16 v8, 0x3d

    invoke-static {v6, v7, v8, v10, v10}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;CCZZ)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "signParams":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codegist/crest/security/oauth/OAuthToken;->getSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lorg/codegist/crest/security/oauth/OAuthToken;->getSecret()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "signature":Ljava/lang/String;
    const-string v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 130
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "HmacSHA1"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/codegist/crest/config/MethodType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-static {v4, v8}, Lorg/codegist/common/net/Urls;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-static {v3, v8}, Lorg/codegist/common/net/Urls;->encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "data":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    sget-object v7, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v7

    invoke-static {v7}, Lorg/codegist/common/codec/Base64;->encodeToByte([B)[B

    move-result-object v7

    sget-object v8, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->ENC:Ljava/nio/charset/Charset;

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 135
    .local v1, "encoded":Ljava/lang/String;
    sget-object v7, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v8, "Signature[data=\"%s\",signature=\"%s\",result=\"%s\"]"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-object v1
.end method
