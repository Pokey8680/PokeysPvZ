.class public Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;
.super Ljava/lang/Object;
.source "AuthorizationHttpChannelFactory.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannelFactory;


# instance fields
.field private final authorization:Lorg/codegist/crest/security/Authorization;

.field private final delegate:Lorg/codegist/crest/io/http/HttpChannelFactory;

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


# direct methods
.method public constructor <init>(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/security/Authorization;Ljava/util/Map;)V
    .locals 0
    .param p1, "delegate"    # Lorg/codegist/crest/io/http/HttpChannelFactory;
    .param p2, "authorization"    # Lorg/codegist/crest/security/Authorization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/io/http/HttpChannelFactory;",
            "Lorg/codegist/crest/security/Authorization;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/io/http/EntityParamExtractor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "entityParamExtrators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codegist/crest/io/http/EntityParamExtractor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->delegate:Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 47
    iput-object p2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->authorization:Lorg/codegist/crest/security/Authorization;

    .line 48
    iput-object p3, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->entityParamExtrators:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public open(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/io/http/HttpChannel;
    .locals 7
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;

    iget-object v1, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->delegate:Lorg/codegist/crest/io/http/HttpChannelFactory;

    invoke-interface {v1, p1, p2, p3}, Lorg/codegist/crest/io/http/HttpChannelFactory;->open(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/io/http/HttpChannel;

    move-result-object v1

    iget-object v2, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->authorization:Lorg/codegist/crest/security/Authorization;

    iget-object v6, p0, Lorg/codegist/crest/io/http/AuthorizationHttpChannelFactory;->entityParamExtrators:Ljava/util/Map;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/codegist/crest/io/http/AuthorizationHttpChannel;-><init>(Lorg/codegist/crest/io/http/HttpChannel;Lorg/codegist/crest/security/Authorization;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/util/Map;)V

    return-object v0
.end method
