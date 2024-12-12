.class public Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;
.super Ljava/lang/Object;
.source "RefreshAuthorizationRetryHandler.java"

# interfaces
.implements Lorg/codegist/crest/handler/RetryHandler;


# static fields
.field private static final LOGGER:Lorg/codegist/common/log/Logger;

.field public static final UNAUTHORIZED_STATUS_CODE_PROP:Ljava/lang/String;


# instance fields
.field private final authorization:Lorg/codegist/crest/security/Authorization;

.field private final max:I

.field private final unauthorizedStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#unauthorized-status-code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->UNAUTHORIZED_STATUS_CODE_PROP:Ljava/lang/String;

    .line 39
    const-class v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/CRestConfig;)V
    .locals 1
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-interface {p1}, Lorg/codegist/crest/CRestConfig;->getMaxAttempts()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->max:I

    .line 50
    sget-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->UNAUTHORIZED_STATUS_CODE_PROP:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->unauthorizedStatusCode:I

    .line 51
    const-class v0, Lorg/codegist/crest/security/Authorization;

    invoke-interface {p1, v0}, Lorg/codegist/crest/CRestConfig;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/security/Authorization;

    iput-object v0, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->authorization:Lorg/codegist/crest/security/Authorization;

    .line 52
    return-void
.end method


# virtual methods
.method public retry(Lorg/codegist/crest/io/RequestException;I)Z
    .locals 2
    .param p1, "exception"    # Lorg/codegist/crest/io/RequestException;
    .param p2, "attemptNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->max:I

    if-le p2, v0, :cond_0

    .line 59
    sget-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v1, "Not retrying, maximum failure reached."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/codegist/crest/io/RequestException;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/codegist/crest/io/RequestException;->getResponse()Lorg/codegist/crest/io/Response;

    move-result-object v0

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getStatusCode()I

    move-result v0

    iget v1, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->unauthorizedStatusCode:I

    if-ne v0, v1, :cond_1

    .line 63
    sget-object v0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v1, "Unauthorized status code has been detected, refreshing authentification and retry."

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/codegist/crest/security/handler/RefreshAuthorizationRetryHandler;->authorization:Lorg/codegist/crest/security/Authorization;

    invoke-interface {v0}, Lorg/codegist/crest/security/Authorization;->refresh()V

    .line 66
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
