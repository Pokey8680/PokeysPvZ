.class public Lorg/codegist/crest/io/RetryingRequestExecutor;
.super Ljava/lang/Object;
.source "RetryingRequestExecutor.java"

# interfaces
.implements Lorg/codegist/crest/io/RequestExecutor;


# instance fields
.field private final delegate:Lorg/codegist/crest/io/RequestExecutor;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/io/RequestExecutor;)V
    .locals 0
    .param p1, "delegate"    # Lorg/codegist/crest/io/RequestExecutor;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/codegist/crest/io/RetryingRequestExecutor;->delegate:Lorg/codegist/crest/io/RequestExecutor;

    .line 40
    return-void
.end method


# virtual methods
.method public execute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/Response;
    .locals 5
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/codegist/crest/config/MethodConfig;->getRetryHandler()Lorg/codegist/crest/handler/RetryHandler;

    move-result-object v3

    .line 47
    .local v3, "retryHandler":Lorg/codegist/crest/handler/RetryHandler;
    const/4 v2, 0x0

    .line 48
    .local v2, "exception":Lorg/codegist/crest/io/RequestException;
    const/4 v0, 0x1

    .line 50
    .local v0, "attemptCount":I
    :cond_0
    invoke-static {v2}, Lorg/codegist/common/lang/Disposables;->dispose(Ljava/lang/Object;)V

    .line 52
    :try_start_0
    iget-object v4, p0, Lorg/codegist/crest/io/RetryingRequestExecutor;->delegate:Lorg/codegist/crest/io/RequestExecutor;

    invoke-interface {v4, p1}, Lorg/codegist/crest/io/RequestExecutor;->execute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/Response;
    :try_end_0
    .catch Lorg/codegist/crest/io/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Lorg/codegist/crest/io/RequestException;
    move-object v2, v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v2, v0}, Lorg/codegist/crest/handler/RetryHandler;->retry(Lorg/codegist/crest/io/RequestException;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    throw v2
.end method
