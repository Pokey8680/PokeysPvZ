.class Lorg/codegist/crest/io/http/AuthorizationHttpChannel;
.super Ljava/lang/Object;
.source "AuthorizationHttpChannel.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/AuthorizationHttpChannel$1;,
        Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;
    }
.end annotation


# static fields
.field private static final SEMICOLON:Ljava/util/regex/Pattern;


# instance fields
.field private final authorization:Lorg/codegist/crest/security/Authorization;

.field private final charset:Ljava/nio/charset/Charset;

.field private contentType:Ljava/lang/String;

.field private final delegate:Lorg/codegist/crest/io/http/HttpChannel;

.field private final entityParamExtrators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/io/http/EntityParamExtractor;",
            ">;"
        }
    .end annotation
.end field

.field private fullContentType:Ljava/lang/String;

.field private httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

.field private final methodType:Lorg/codegist/crest/config/MethodType;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->SEMICOLON:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/io/http/HttpChannel;Lorg/codegist/crest/security/Authorization;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/Map;)V
    .locals 3
    .param p1, "delegate"    # Lorg/codegist/crest/io/http/HttpChannel;
    .param p2, "authorization"    # Lorg/codegist/crest/security/Authorization;
    .param p3, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/io/http/HttpChannel;",
            "Lorg/codegist/crest/security/Authorization;",
            "Lorg/codegist/crest/config/MethodType;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/io/http/EntityParamExtractor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "entityParamExtrators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codegist/crest/io/http/EntityParamExtractor;>;"
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->parameters:Ljava/util/List;

    .line 57
    iput-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->contentType:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->fullContentType:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    .line 62
    iput-object p4, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->url:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->methodType:Lorg/codegist/crest/config/MethodType;

    .line 64
    iput-object p5, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->charset:Ljava/nio/charset/Charset;

    .line 65
    iput-object p1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    .line 66
    iput-object p6, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->entityParamExtrators:Ljava/util/Map;

    .line 67
    iput-object p2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->authorization:Lorg/codegist/crest/security/Authorization;

    .line 68
    invoke-static {p4}, Lorg/codegist/common/net/Urls;->getQueryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "queryString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->parameters:Ljava/util/List;

    invoke-static {v0}, Lorg/codegist/crest/util/Pairs;->fromUrlEncoded(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_0
    return-void
.end method

.method private authenticate()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v3, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->authorization:Lorg/codegist/crest/security/Authorization;

    iget-object v4, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->methodType:Lorg/codegist/crest/config/MethodType;

    iget-object v5, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->url:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->parameters:Ljava/util/List;

    const-class v6, Lorg/codegist/crest/param/EncodedPair;

    invoke-static {v2, v6}, Lorg/codegist/common/collect/Arrays;->arrify(Ljava/util/Collection;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/codegist/crest/param/EncodedPair;

    invoke-interface {v3, v4, v5, v2}, Lorg/codegist/crest/security/Authorization;->authorize(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Lorg/codegist/crest/security/AuthorizationToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 92
    .local v1, "token":Lorg/codegist/crest/security/AuthorizationToken;
    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/codegist/crest/security/AuthorizationToken;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/codegist/crest/security/AuthorizationToken;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codegist/crest/io/http/HttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 89
    .end local v1    # "token":Lorg/codegist/crest/security/AuthorizationToken;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/codegist/crest/CRestException;->handle(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private hasEntityParamExtrator()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->entityParamExtrators:Ljava/util/Map;

    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->contentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1, p2}, Lorg/codegist/crest/io/http/HttpChannel;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public send()Lorg/codegist/crest/io/http/HttpChannel$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->hasEntityParamExtrator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v2, v1}, Lorg/codegist/crest/io/http/HttpEntityWriter;->writeEntityTo(Ljava/io/OutputStream;)V

    .line 78
    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->entityParamExtrators:Ljava/util/Map;

    iget-object v3, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->contentType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codegist/crest/io/http/EntityParamExtractor;

    iget-object v3, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->fullContentType:Ljava/lang/String;

    iget-object v4, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->charset:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v2, v3, v4, v5}, Lorg/codegist/crest/io/http/EntityParamExtractor;->extract(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 79
    .local v0, "entityParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->parameters:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    .end local v0    # "entityParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-direct {p0}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->authenticate()V

    .line 82
    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v2}, Lorg/codegist/crest/io/http/HttpChannel;->send()Lorg/codegist/crest/io/http/HttpChannel$Response;

    move-result-object v2

    return-object v2
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/http/HttpChannel;->setAccept(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/http/HttpChannel;->setConnectionTimeout(I)V

    .line 145
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/http/HttpChannel;->setContentType(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->SEMICOLON:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->contentType:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->fullContentType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1, p2}, Lorg/codegist/crest/io/http/HttpChannel;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/http/HttpChannel;->setSocketTimeout(I)V

    .line 138
    return-void
.end method

.method public writeEntityWith(Lorg/codegist/crest/io/http/HttpEntityWriter;)V
    .locals 2
    .param p1, "httpEntityWriter"    # Lorg/codegist/crest/io/http/HttpEntityWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->hasEntityParamExtrator()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel$RewritableHttpEntityWriter;-><init>(Lorg/codegist/crest/io/http/HttpEntityWriter;Lorg/codegist/crest/io/http/AuthorizationHttpChannel$1;)V

    move-object p1, v0

    .end local p1    # "httpEntityWriter":Lorg/codegist/crest/io/http/HttpEntityWriter;
    :cond_0
    iput-object p1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    .line 109
    iget-object v0, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->delegate:Lorg/codegist/crest/io/http/HttpChannel;

    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;->httpEntityWriter:Lorg/codegist/crest/io/http/HttpEntityWriter;

    invoke-interface {v0, v1}, Lorg/codegist/crest/io/http/HttpChannel;->writeEntityWith(Lorg/codegist/crest/io/http/HttpEntityWriter;)V

    .line 110
    return-void
.end method
