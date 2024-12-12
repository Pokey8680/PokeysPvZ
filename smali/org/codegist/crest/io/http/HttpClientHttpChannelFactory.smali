.class public final Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;
.super Ljava/lang/Object;
.source "HttpClientHttpChannelFactory.java"

# interfaces
.implements Lorg/codegist/crest/io/http/HttpChannelFactory;
.implements Lorg/codegist/common/lang/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory$1;
    }
.end annotation


# static fields
.field public static final HTTP_CLIENT_PROP:Ljava/lang/String;


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#user-http-client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;->HTTP_CLIENT_PROP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;->client:Lorg/apache/http/client/HttpClient;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 65
    const-class v0, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;

    invoke-static {p1, v0}, Lorg/codegist/crest/io/http/HttpClientFactory;->create(Lorg/codegist/crest/CRestConfig;Ljava/lang/Class;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 66
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 103
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void

    .line 110
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public open(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/io/http/HttpChannel;
    .locals 4
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 73
    sget-object v1, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory$1;->$SwitchMap$org$codegist$crest$config$MethodType:[I

    invoke-virtual {p1}, Lorg/codegist/crest/config/MethodType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :pswitch_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lorg/codegist/crest/io/http/HttpClientHttpChannel;

    iget-object v2, p0, Lorg/codegist/crest/io/http/HttpClientHttpChannelFactory;->client:Lorg/apache/http/client/HttpClient;

    invoke-direct {v1, v2, v0}, Lorg/codegist/crest/io/http/HttpClientHttpChannel;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v1

    .line 78
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 79
    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 81
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 84
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 87
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    .line 88
    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 90
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :pswitch_5
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 91
    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
