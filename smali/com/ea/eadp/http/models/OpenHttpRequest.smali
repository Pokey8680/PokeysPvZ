.class public Lcom/ea/eadp/http/models/OpenHttpRequest;
.super Ljava/lang/Object;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$Operation;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$Base64;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;,
        Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory; = null

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

.field private progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

.field private final requestMethod:Ljava/lang/String;

.field private totalSize:J

.field private totalWritten:J

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 376
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    sput-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/CharSequence;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1413
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    .line 1415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->uncompress:Z

    .line 1417
    const/16 v1, 0x2000

    iput v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    .line 1419
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    .line 1421
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalWritten:J

    .line 1427
    sget-object v1, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    iput-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    .line 1439
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1443
    iput-object p2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->requestMethod:Ljava/lang/String;

    .line 1444
    return-void

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    .line 1415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->uncompress:Z

    .line 1417
    const/16 v0, 0x2000

    iput v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    .line 1419
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    .line 1421
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalWritten:J

    .line 1427
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    .line 1455
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->url:Ljava/net/URL;

    .line 1456
    iput-object p2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->requestMethod:Ljava/lang/String;

    .line 1457
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/ea/eadp/http/models/OpenHttpRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/http/models/OpenHttpRequest;

    .prologue
    .line 102
    iget v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/ea/eadp/http/models/OpenHttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/eadp/http/models/OpenHttpRequest;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$214(Lcom/ea/eadp/http/models/OpenHttpRequest;J)J
    .locals 3
    .param p0, "x0"    # Lcom/ea/eadp/http/models/OpenHttpRequest;
    .param p1, "x1"    # J

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/ea/eadp/http/models/OpenHttpRequest;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/eadp/http/models/OpenHttpRequest;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/ea/eadp/http/models/OpenHttpRequest;)Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/http/models/OpenHttpRequest;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    return-object v0
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x3f

    const/16 v3, 0x26

    .line 332
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 333
    .local v1, "queryStart":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 334
    .local v0, "lastChar":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 335
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_0
    :goto_0
    return-object p1

    .line 336
    :cond_1
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    .line 337
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2f

    .line 324
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v6, 0x3d

    .line 861
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 890
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 865
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 868
    invoke-static {v0, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 872
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 873
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 874
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 877
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 878
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 881
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 882
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 883
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 885
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 886
    if-eqz v4, :cond_2

    .line 887
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 890
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/CharSequence;
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/16 v5, 0x3d

    .line 905
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 934
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 909
    .restart local v0    # "baseUrl":Ljava/lang/String;
    :cond_1
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 910
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must specify an even number of parameter names/values"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 913
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-static {v0, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 916
    invoke-static {v0, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 919
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 921
    const/4 v4, 0x1

    aget-object v3, p1, v4

    .line 922
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 925
    :cond_3
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_5

    .line 926
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 927
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 929
    add-int/lit8 v4, v1, 0x1

    aget-object v3, p1, v4

    .line 930
    if-eqz v3, :cond_4

    .line 931
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 925
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 934
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 5

    .prologue
    .line 1466
    :try_start_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1467
    sget-object v2, Lcom/ea/eadp/http/models/OpenHttpRequest;->CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1470
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1471
    return-object v0

    .line 1469
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    sget-object v2, Lcom/ea/eadp/http/models/OpenHttpRequest;->CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->url:Ljava/net/URL;

    invoke-interface {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 1472
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 1473
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 1460
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->httpProxyHost:Ljava/lang/String;

    iget v4, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1138
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1168
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1189
    invoke-static {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static delete(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 825
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .local v10, "parsed":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v11

    .line 832
    .local v11, "port":I
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    .line 838
    .local v7, "encoded":Ljava/lang/String;
    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 839
    .local v9, "paramsStart":I
    if-lez v9, :cond_1

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v7, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "+"

    const-string v4, "%2B"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 842
    :cond_1
    return-object v7

    .line 826
    .end local v2    # "host":Ljava/lang/String;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v9    # "paramsStart":I
    .end local v10    # "parsed":Ljava/net/URL;
    .end local v11    # "port":I
    :catch_0
    move-exception v6

    .line 827
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v0, v6}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 843
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v10    # "parsed":Ljava/net/URL;
    .restart local v11    # "port":I
    :catch_1
    move-exception v6

    .line 844
    .local v6, "e":Ljava/net/URISyntaxException;
    new-instance v8, Ljava/io/IOException;

    const-string v0, "Parsing URI failed"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 845
    .local v8, "io":Ljava/io/IOException;
    invoke-virtual {v8, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 846
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v0, v8}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 946
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 977
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->get(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 997
    invoke-static {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->get(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 957
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 276
    sget-object v4, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_0

    .line 277
    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/ea/eadp/http/models/OpenHttpRequest$1;

    invoke-direct {v5}, Lcom/ea/eadp/http/models/OpenHttpRequest$1;-><init>()V

    aput-object v5, v3, v4

    .line 292
    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 293
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    sget-object v4, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v4

    .line 295
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Security exception configuring SSL context"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, "ioException":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    new-instance v4, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v4, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$2;

    invoke-direct {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$2;-><init>()V

    sput-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 315
    :cond_0
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 268
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 271
    .end local p0    # "charset":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "charset":Ljava/lang/String;
    :cond_0
    const-string p0, "UTF-8"

    goto :goto_0
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1202
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->head(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1253
    invoke-static {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->head(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static head(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1213
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private incrementTotalSize(J)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 5
    .param p1, "size"    # J

    .prologue
    .line 2636
    iget-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2637
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    .line 2638
    :cond_0
    iget-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->totalSize:J

    .line 2639
    return-object p0
.end method

.method public static keepAlive(Z)V
    .locals 2
    .param p0, "keepAlive"    # Z

    .prologue
    .line 1311
    const-string v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1312
    return-void
.end method

.method public static maxConnections(I)V
    .locals 2
    .param p0, "maxConnections"    # I

    .prologue
    .line 1322
    const-string v0, "http.maxConnections"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1323
    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .locals 5
    .param p0, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 1362
    if-eqz p0, :cond_1

    array-length v3, p0

    if-lez v3, :cond_1

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    .local v2, "separated":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 1365
    .local v1, "last":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1366
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1367
    :cond_0
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    const-string v3, "http.nonProxyHosts"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1371
    .end local v0    # "i":I
    .end local v1    # "last":I
    .end local v2    # "separated":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 1370
    :cond_1
    const-string v3, "http.nonProxyHosts"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1266
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1277
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->post(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1061
    invoke-static {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->post(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static post(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1021
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 1334
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1336
    return-void
.end method

.method public static proxyPort(I)V
    .locals 2
    .param p0, "port"    # I

    .prologue
    .line 1347
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1348
    .local v0, "portValue":Ljava/lang/String;
    const-string v1, "http.proxyPort"

    invoke-static {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1349
    const-string v1, "https.proxyPort"

    invoke-static {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1350
    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1074
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 1104
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "url":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->put(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "baseUrl"    # Ljava/lang/CharSequence;
    .param p1, "encode"    # Z
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1125
    invoke-static {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->put(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static put(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1085
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setConnectionFactory(Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;)V
    .locals 1
    .param p0, "connectionFactory"    # Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    sput-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest;->CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    sput-object p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->CONNECTION_FACTORY:Lcom/ea/eadp/http/models/OpenHttpRequest$ConnectionFactory;

    goto :goto_0
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1384
    if-eqz p1, :cond_0

    .line 1385
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    .local v0, "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :goto_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1392
    .end local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$4;

    invoke-direct {v0, p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$4;-><init>(Ljava/lang/String;)V

    .restart local v0    # "action":Ljava/security/PrivilegedAction;, "Ljava/security/PrivilegedAction<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1289
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    const-string v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 2557
    const-string v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "acceptCharset"    # Ljava/lang/String;

    .prologue
    .line 2346
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 2326
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptGzipEncoding()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1

    .prologue
    .line 2336
    const-string v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1

    .prologue
    .line 2566
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->accept(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "authorization"    # Ljava/lang/String;

    .prologue
    .line 2428
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public badRequest()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1593
    const/16 v0, 0x190

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->authorization(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1757
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1758
    return-object p0
.end method

.method public body(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1771
    .local p1, "output":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1772
    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1730
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 1731
    invoke-static {p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1810
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .locals 1

    .prologue
    .line 1678
    iget v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 1664
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1666
    :cond_0
    iput p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    .line 1667
    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1904
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1892
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 2

    .prologue
    .line 1710
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentLength()I

    move-result v0

    .line 1711
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 1712
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1714
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_0
.end method

.method public bytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1795
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public cacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2382
    const-string v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2285
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1649
    return-object p0
.end method

.method protected closeOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2650
    invoke-virtual {p0, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress(Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2651
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    if-nez v0, :cond_0

    .line 2664
    :goto_0
    return-object p0

    .line 2653
    :cond_0
    iget-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->multipart:Z

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    .line 2655
    :cond_1
    iget-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 2657
    :try_start_0
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2663
    :goto_1
    iput-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    goto :goto_0

    .line 2662
    :cond_2
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->close()V

    goto :goto_1

    .line 2658
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2676
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2677
    :catch_0
    move-exception v0

    .line 2678
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1525
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 1526
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1527
    :catch_0
    move-exception v0

    .line 1528
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1542
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1543
    return-object p0
.end method

.method public connectTimeout(I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 2020
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2021
    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2355
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .locals 1

    .prologue
    .line 2526
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "contentLength"    # I

    .prologue
    .line 2546
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 2547
    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 2536
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentLength(I)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 2493
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 2504
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 2505
    const-string v0, "; charset="

    .line 2506
    .local v0, "separator":Ljava/lang/String;
    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    .line 2508
    .end local v0    # "separator":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2517
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2579
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;

    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ea/eadp/http/models/OpenHttpRequest$8;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v0
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 6
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2605
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$9;

    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ea/eadp/http/models/OpenHttpRequest$9;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$9;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v0
.end method

.method public created()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1563
    const/16 v0, 0xc9

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public date()J
    .locals 2

    .prologue
    .line 2373
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2103
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2118
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public disconnect()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1638
    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2391
    const-string v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .locals 2

    .prologue
    .line 2400
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public followRedirects(Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "followRedirects"    # Z

    .prologue
    .line 3222
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 3223
    return-object p0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3093
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 3110
    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->form:Z

    if-nez v3, :cond_3

    move v1, v2

    .line 3111
    .local v1, "first":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 3112
    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v3, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 3113
    iput-boolean v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->form:Z

    .line 3115
    :cond_0
    invoke-static {p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3117
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 3118
    if-nez v1, :cond_1

    .line 3119
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(I)V

    .line 3120
    :cond_1
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    .line 3121
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(I)V

    .line 3122
    if-eqz p2, :cond_2

    .line 3123
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3127
    :cond_2
    return-object p0

    .line 3110
    .end local v1    # "first":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 3124
    .restart local v1    # "first":Z
    :catch_0
    move-exception v0

    .line 3125
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3061
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3077
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3047
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3140
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3141
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3142
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    goto :goto_0

    .line 3143
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 1489
    invoke-direct {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x22

    const/4 v6, 0x0

    const/16 v9, 0x3b

    const/4 v8, -0x1

    .line 2244
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v3, v6

    .line 2276
    :cond_1
    :goto_0
    return-object v3

    .line 2247
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2248
    .local v1, "length":I
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 2249
    .local v4, "start":I
    if-eqz v4, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    move-object v3, v6

    .line 2250
    goto :goto_0

    .line 2252
    :cond_4
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2253
    .local v0, "end":I
    if-ne v0, v8, :cond_5

    .line 2254
    move v0, v1

    .line 2256
    :cond_5
    :goto_1
    if-ge v4, v0, :cond_7

    .line 2257
    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2258
    .local v2, "nameEnd":I
    if-eq v2, v8, :cond_6

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2260
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2261
    .local v3, "paramValue":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 2262
    .local v5, "valueLength":I
    if-eqz v5, :cond_6

    .line 2263
    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_1

    .line 2265
    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2270
    .end local v3    # "paramValue":Ljava/lang/String;
    .end local v5    # "valueLength":I
    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 2271
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2272
    if-ne v0, v8, :cond_5

    .line 2273
    move v0, v1

    goto :goto_1

    .end local v2    # "nameEnd":I
    :cond_7
    move-object v3, v6

    .line 2276
    goto :goto_0
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v12, 0x22

    const/16 v11, 0x3b

    const/4 v10, -0x1

    .line 2198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 2199
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 2233
    :cond_1
    :goto_0
    return-object v5

    .line 2201
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2202
    .local v1, "headerLength":I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 2203
    .local v6, "start":I
    if-eqz v6, :cond_3

    if-ne v6, v1, :cond_4

    .line 2204
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_0

    .line 2206
    :cond_4
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2207
    .local v0, "end":I
    if-ne v0, v10, :cond_5

    .line 2208
    move v0, v1

    .line 2210
    :cond_5
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2211
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_1
    if-ge v6, v0, :cond_1

    .line 2212
    const/16 v8, 0x3d

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2213
    .local v4, "nameEnd":I
    if-eq v4, v10, :cond_7

    if-ge v4, v0, :cond_7

    .line 2214
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2215
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 2216
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2217
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2218
    .local v2, "length":I
    if-eqz v2, :cond_7

    .line 2219
    const/4 v8, 0x2

    if-le v2, v8, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_8

    .line 2221
    const/4 v8, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2227
    .end local v2    # "length":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_7
    :goto_2
    add-int/lit8 v6, v0, 0x1

    .line 2228
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2229
    if-ne v0, v10, :cond_6

    .line 2230
    move v0, v1

    goto :goto_1

    .line 2223
    .restart local v2    # "length":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 2044
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 2068
    .local p1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2079
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2080
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/eadp/http/models/OpenHttpRequest;"
        }
    .end annotation

    .prologue
    .line 2055
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2056
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2057
    .local v0, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/util/Map$Entry;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    goto :goto_0

    .line 2058
    .end local v0    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2091
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    .line 2157
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2158
    :cond_0
    sget-object v2, Lcom/ea/eadp/http/models/OpenHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 2164
    :goto_0
    return-object v2

    .line 2160
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2161
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2162
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    .line 2164
    :cond_2
    sget-object v2, Lcom/ea/eadp/http/models/OpenHttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_0
.end method

.method public ifModifiedSince(J)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "ifModifiedSince"    # J

    .prologue
    .line 2472
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 2473
    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 2483
    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public ignoreCloseExceptions(Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 0
    .param p1, "ignore"    # Z

    .prologue
    .line 1503
    iput-boolean p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    .line 1504
    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .locals 1

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2130
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutputQuietly()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2146
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1783
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 2409
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2418
    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1624
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->closeOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 1625
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3194
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noContent()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1573
    const/16 v0, 0xcc

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notFound()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1603
    const/16 v0, 0x194

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notModified()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1613
    const/16 v0, 0x130

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ok()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1553
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2689
    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    if-eqz v1, :cond_0

    .line 2696
    :goto_0
    return-object p0

    .line 2691
    :cond_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2692
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {p0, v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, "charset":Ljava/lang/String;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 2175
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2188
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2885
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2808
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "part"    # Ljava/lang/String;

    .prologue
    .line 2758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2822
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2772
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2867
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2868
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->incrementTotalSize(J)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2872
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v2

    return-object v2

    .line 2869
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2870
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2903
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->startPart()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2904
    invoke-virtual {p0, p1, p2, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2905
    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2909
    return-object p0

    .line 2906
    :catch_0
    move-exception v0

    .line 2907
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "part"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2789
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->startPart()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2790
    invoke-virtual {p0, p1, p2, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2791
    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {v1, p4}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2795
    return-object p0

    .line 2792
    :catch_0
    move-exception v0

    .line 2793
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2922
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public progress(Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "callback"    # Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    .prologue
    .line 2628
    if-nez p1, :cond_0

    .line 2629
    sget-object v0, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;->DEFAULT:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    .line 2632
    :goto_0
    return-object p0

    .line 2631
    :cond_0
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->progress:Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    goto :goto_0
.end method

.method public proxyAuthorization(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "proxyAuthorization"    # Ljava/lang/String;

    .prologue
    .line 2438
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public proxyBasic(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 2462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->proxyAuthorization(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 2009
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2010
    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1877
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .locals 4
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1863
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1917
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    .local v1, "output":Ljava/io/OutputStream;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$5;

    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {v2, p0, v1, v3, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$5;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest$5;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v2

    .line 1918
    .end local v1    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1919
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1940
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "output"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1955
    invoke-virtual {p0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->receive(Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/io/Writer;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1992
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1993
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;

    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ea/eadp/http/models/OpenHttpRequest$7;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v0
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 6
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    .line 1968
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;

    iget-boolean v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/ea/eadp/http/models/OpenHttpRequest$6;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v0
.end method

.method public referer(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "referer"    # Ljava/lang/String;

    .prologue
    .line 2305
    const-string v0, "Referer"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/io/File;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2935
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2936
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->incrementTotalSize(J)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2940
    invoke-virtual {p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v2

    return-object v2

    .line 2937
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 2938
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2967
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2968
    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2972
    return-object p0

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/Reader;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2986
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2990
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-static {v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->access$500(Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2992
    .local v1, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$10;

    invoke-direct {v2, p0, v1, p1, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$10;-><init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v2

    .line 2987
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 2988
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .param p1, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3013
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 3014
    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3018
    return-object p0

    .line 3015
    :catch_0
    move-exception v0

    .line 3016
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send([B)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 2951
    if-eqz p1, :cond_0

    .line 2952
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->incrementTotalSize(J)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2953
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/io/InputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2364
    const-string v0, "Server"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1583
    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startPart()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2706
    iget-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->multipart:Z

    if-nez v0, :cond_0

    .line 2707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->multipart:Z

    .line 2708
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentType(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2709
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    .line 2712
    :goto_0
    return-object p0

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    goto :goto_0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_2

    .line 1823
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1840
    .local v1, "stream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->uncompress:Z

    if-eqz v2, :cond_1

    const-string v2, "gzip"

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1844
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v1

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1828
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1829
    .restart local v1    # "stream":Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 1831
    :try_start_1
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1832
    :catch_1
    move-exception v0

    .line 1833
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->contentLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 1834
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 1836
    :cond_3
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "stream":Ljava/io/InputStream;
    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .restart local v1    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 1844
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_2
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    goto :goto_1

    .line 1845
    :catch_2
    move-exception v0

    .line 1846
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3155
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3156
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3157
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 3159
    :cond_0
    return-object p0
.end method

.method public trustAllHosts()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3173
    .local v0, "connection":Ljava/net/HttpURLConnection;
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 3174
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 3176
    :cond_0
    return-object p0
.end method

.method public uncompress(Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 0
    .param p1, "uncompress"    # Z

    .prologue
    .line 1700
    iput-boolean p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->uncompress:Z

    .line 1701
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 3185
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "useCaches"    # Z

    .prologue
    .line 2315
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2316
    return-object p0
.end method

.method public useProxy(Ljava/lang/String;I)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 2
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    .line 3206
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 3207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The connection has already been created. This method must be called before reading or writing to the request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3209
    :cond_0
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->httpProxyHost:Ljava/lang/String;

    .line 3210
    iput p2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->httpProxyPort:I

    .line 3211
    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 2295
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2725
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2740
    .local v0, "partBuffer":Ljava/lang/StringBuilder;
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    if-eqz p2, :cond_0

    .line 2742
    const-string v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2744
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2745
    if-eqz p3, :cond_1

    .line 2746
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 2747
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/lang/CharSequence;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    .line 3029
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest;->openOutput()Lcom/ea/eadp/http/models/OpenHttpRequest;

    .line 3030
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest;->output:Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;

    invoke-static {v3}, Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;->access$500(Lcom/ea/eadp/http/models/OpenHttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3031
    :catch_0
    move-exception v0

    .line 3032
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
