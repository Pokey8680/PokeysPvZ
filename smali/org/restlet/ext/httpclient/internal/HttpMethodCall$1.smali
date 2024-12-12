.class Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpMethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/ext/httpclient/internal/HttpMethodCall;-><init>(Lorg/restlet/ext/httpclient/HttpClientHelper;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$requestUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    iput-object p2, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->val$requestUri:Ljava/lang/String;

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->val$method:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 4

    .prologue
    .line 136
    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->val$requestUri:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/net/URISyntaxException;
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$1;->this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    invoke-virtual {v1}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Invalid URI syntax"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    const/4 v1, 0x0

    goto :goto_0
.end method
