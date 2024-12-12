.class public final Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannelFactory;
.super Ljava/lang/Object;
.source "HttpURLConnectionHttpChannelFactory.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannelFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/io/http/HttpChannel;
    .locals 2
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 41
    .local v0, "con":Ljava/net/HttpURLConnection;
    invoke-virtual {p1}, Lorg/codegist/crest/config/MethodType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;

    invoke-direct {v1, v0, p1}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannel;-><init>(Ljava/net/HttpURLConnection;Lorg/codegist/crest/config/MethodType;)V

    return-object v1
.end method
