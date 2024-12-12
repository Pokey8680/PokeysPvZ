.class public Lorg/codegist/crest/handler/MaxAttemptRetryHandler;
.super Ljava/lang/Object;
.source "MaxAttemptRetryHandler.java"

# interfaces
.implements Lorg/codegist/crest/handler/RetryHandler;


# static fields
.field private static final LOG:Lorg/codegist/common/log/Logger;


# instance fields
.field private final max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;->LOG:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getMaxAttempts()I

    move-result v0

    iput v0, p0, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;->max:I

    .line 46
    return-void
.end method


# virtual methods
.method public retry(Lorg/codegist/crest/io/RequestException;I)Z
    .locals 7
    .param p1, "exception"    # Lorg/codegist/crest/io/RequestException;
    .param p2, "attemptNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget v3, p0, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;->max:I

    if-gt p2, v3, :cond_0

    move v0, v1

    .line 53
    .local v0, "retry":Z
    :goto_0
    sget-object v3, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;->LOG:Lorg/codegist/common/log/Logger;

    const-string v4, "Retrying attempt=%d,max=%d,retry=%b,reason=%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v2, p0, Lorg/codegist/crest/handler/MaxAttemptRetryHandler;->max:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/codegist/crest/io/RequestException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return v0

    .end local v0    # "retry":Z
    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    .restart local v0    # "retry":Z
    :cond_1
    const-string v1, "unknown"

    goto :goto_1
.end method
