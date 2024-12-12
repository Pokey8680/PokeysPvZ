.class Lorg/codegist/crest/io/http/HttpResourceInputStream;
.super Lorg/codegist/common/io/InputStreamWrapper;
.source "HttpResourceInputStream.java"


# static fields
.field private static final LOGGER:Lorg/codegist/common/log/Logger;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final resource:Lorg/codegist/crest/io/http/HttpResource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/io/http/HttpResource;)V
    .locals 2
    .param p1, "resource"    # Lorg/codegist/crest/io/http/HttpResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-interface {p1}, Lorg/codegist/crest/io/http/HttpResource;->getEntity()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codegist/common/io/InputStreamWrapper;-><init>(Ljava/io/InputStream;)V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->resource:Lorg/codegist/crest/io/http/HttpResource;

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    sget-object v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v1, "This http stream has already been closed, ignoring close request."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v1, "Releasing underlying network resources."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-super {p0}, Lorg/codegist/common/io/InputStreamWrapper;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lorg/codegist/common/io/InputStreamWrapper;->close()V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v1, "Finalizing..."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lorg/codegist/crest/io/http/HttpResourceInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
