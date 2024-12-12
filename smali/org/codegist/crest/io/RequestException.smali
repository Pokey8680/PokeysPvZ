.class public Lorg/codegist/crest/io/RequestException;
.super Ljava/lang/Exception;
.source "RequestException.java"

# interfaces
.implements Lorg/codegist/common/lang/Disposable;


# instance fields
.field private final response:Lorg/codegist/crest/io/Response;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/codegist/crest/io/Response;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/codegist/crest/io/Response;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lorg/codegist/crest/io/RequestException;->response:Lorg/codegist/crest/io/Response;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codegist/crest/io/RequestException;->response:Lorg/codegist/crest/io/Response;

    .line 40
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/codegist/crest/io/RequestException;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/codegist/crest/io/RequestException;->response:Lorg/codegist/crest/io/Response;

    invoke-static {v0}, Lorg/codegist/common/lang/Disposables;->dispose(Ljava/lang/Object;)V

    .line 74
    :cond_0
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
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/crest/io/RequestException;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getResponse()Lorg/codegist/crest/io/Response;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/codegist/crest/io/RequestException;->response:Lorg/codegist/crest/io/Response;

    return-object v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/codegist/crest/io/RequestException;->response:Lorg/codegist/crest/io/Response;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
