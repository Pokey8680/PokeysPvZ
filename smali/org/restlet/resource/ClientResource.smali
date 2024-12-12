.class public Lorg/restlet/resource/ClientResource;
.super Lorg/restlet/resource/UniformResource;
.source "ClientResource.java"


# instance fields
.field private volatile followingRedirects:Z

.field private volatile maxRedirects:I

.field private volatile next:Lorg/restlet/Uniform;

.field private volatile nextCreated:Z

.field private volatile requestEntityBuffering:Z

.field private volatile responseEntityBuffering:Z

.field private volatile retryAttempts:I

.field private volatile retryDelay:J

.field private volatile retryOnError:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/restlet/resource/UniformResource;-><init>()V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, v0, v1, p1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 327
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/net/URI;)V

    .line 328
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 317
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Ljava/net/URI;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 210
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/net/URI;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Request;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "response"    # Lorg/restlet/Response;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    invoke-direct {p0}, Lorg/restlet/resource/UniformResource;-><init>()V

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object p1

    .line 296
    :cond_0
    invoke-virtual {p3, p2}, Lorg/restlet/Response;->setRequest(Lorg/restlet/Request;)V

    .line 298
    iput-boolean v1, p0, Lorg/restlet/resource/ClientResource;->followingRedirects:Z

    .line 299
    const/16 v0, 0xa

    iput v0, p0, Lorg/restlet/resource/ClientResource;->maxRedirects:I

    .line 300
    iput-boolean v1, p0, Lorg/restlet/resource/ClientResource;->retryOnError:Z

    .line 301
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lorg/restlet/resource/ClientResource;->retryDelay:J

    .line 302
    const/4 v0, 0x2

    iput v0, p0, Lorg/restlet/resource/ClientResource;->retryAttempts:I

    .line 303
    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->requestEntityBuffering:Z

    .line 304
    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->responseEntityBuffering:Z

    .line 305
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/resource/ClientResource;->init(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 306
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "method"    # Lorg/restlet/data/Method;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p3}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/net/URI;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "method"    # Lorg/restlet/data/Method;
    .param p3, "uri"    # Ljava/net/URI;

    .prologue
    .line 224
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p3}, Lorg/restlet/data/Reference;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "method"    # Lorg/restlet/data/Method;
    .param p3, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 238
    new-instance v0, Lorg/restlet/Request;

    invoke-direct {v0, p2, p3}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    new-instance v1, Lorg/restlet/Response;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Context;Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;
    .param p2, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 264
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Request;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 395
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 396
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Ljava/net/URI;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 339
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Ljava/net/URI;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 351
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Reference;)V
    .locals 2
    .param p1, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 373
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Method;Lorg/restlet/data/Reference;)V

    .line 374
    return-void
.end method

.method public constructor <init>(Lorg/restlet/resource/ClientResource;)V
    .locals 4
    .param p1, "resource"    # Lorg/restlet/resource/ClientResource;

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/restlet/resource/UniformResource;-><init>()V

    .line 186
    new-instance v0, Lorg/restlet/Request;

    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/restlet/Request;-><init>(Lorg/restlet/Request;)V

    .line 187
    .local v0, "request":Lorg/restlet/Request;
    new-instance v1, Lorg/restlet/Response;

    invoke-direct {v1, v0}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 188
    .local v1, "response":Lorg/restlet/Response;
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v2

    iput-object v2, p0, Lorg/restlet/resource/ClientResource;->next:Lorg/restlet/Uniform;

    .line 189
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->isFollowingRedirects()Z

    move-result v2

    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->followingRedirects:Z

    .line 190
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getMaxRedirects()I

    move-result v2

    iput v2, p0, Lorg/restlet/resource/ClientResource;->maxRedirects:I

    .line 191
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->isRetryOnError()Z

    move-result v2

    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->retryOnError:Z

    .line 192
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getRetryDelay()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/restlet/resource/ClientResource;->retryDelay:J

    .line 193
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getRetryAttempts()I

    move-result v2

    iput v2, p0, Lorg/restlet/resource/ClientResource;->retryAttempts:I

    .line 195
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->isRequestEntityBuffering()Z

    move-result v2

    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->requestEntityBuffering:Z

    .line 196
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->isResponseEntityBuffering()Z

    move-result v2

    iput-boolean v2, p0, Lorg/restlet/resource/ClientResource;->responseEntityBuffering:Z

    .line 197
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getApplication()Lorg/restlet/Application;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ClientResource;->setApplication(Lorg/restlet/Application;)V

    .line 198
    invoke-virtual {p1}, Lorg/restlet/resource/ClientResource;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lorg/restlet/resource/ClientResource;->init(Lorg/restlet/Context;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 199
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x0

    new-instance v1, Lorg/restlet/data/Reference;

    invoke-direct {v1, p0}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lorg/restlet/resource/ClientResource;->create(Lorg/restlet/Context;Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/restlet/Context;Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Lorg/restlet/Context;
    .param p1, "reference"    # Lorg/restlet/data/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/Context;",
            "Lorg/restlet/data/Reference;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/restlet/resource/ClientResource;

    invoke-direct {v0, p0, p1}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Reference;)V

    .line 103
    .local v0, "clientResource":Lorg/restlet/resource/ClientResource;
    invoke-virtual {v0, p2}, Lorg/restlet/resource/ClientResource;->wrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "reference"    # Lorg/restlet/data/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/data/Reference;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/restlet/resource/ClientResource;->create(Lorg/restlet/Context;Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/restlet/data/Metadata;F)V
    .locals 1
    .param p1, "metadata"    # Lorg/restlet/data/Metadata;
    .param p2, "quality"    # F

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/data/ClientInfo;->accept(Lorg/restlet/data/Metadata;F)V

    .line 432
    return-void
.end method

.method public varargs accept([Lorg/restlet/data/Metadata;)V
    .locals 1
    .param p1, "metadata"    # [Lorg/restlet/data/Metadata;

    .prologue
    .line 417
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/data/ClientInfo;->accept([Lorg/restlet/data/Metadata;)V

    .line 418
    return-void
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/data/Reference;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/data/Reference;
    .locals 1
    .param p1, "parameter"    # Lorg/restlet/data/Parameter;

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/data/Reference;->addQueryParameter(Lorg/restlet/data/Parameter;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameters(Ljava/lang/Iterable;)Lorg/restlet/data/Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)",
            "Lorg/restlet/data/Reference;"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, "parameters":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/restlet/data/Parameter;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/data/Reference;->addQueryParameters(Ljava/lang/Iterable;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method public addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/data/Reference;->addSegment(Ljava/lang/String;)Lorg/restlet/data/Reference;

    move-result-object v0

    return-object v0
.end method

.method protected createNext()Lorg/restlet/Uniform;
    .locals 6

    .prologue
    .line 496
    const/4 v4, 0x0

    .line 499
    .local v4, "result":Lorg/restlet/Uniform;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getApplication()Lorg/restlet/Application;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Application;->getOutboundRoot()Lorg/restlet/Restlet;

    move-result-object v4

    .line 501
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getContext()Lorg/restlet/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v4

    .line 506
    :cond_0
    if-nez v4, :cond_1

    .line 509
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    .line 510
    .local v2, "rProtocol":Lorg/restlet/data/Protocol;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v3

    .line 511
    .local v3, "rReference":Lorg/restlet/data/Reference;
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 515
    .local v1, "protocol":Lorg/restlet/data/Protocol;
    :goto_0
    if-eqz v1, :cond_1

    .line 516
    new-instance v0, Lorg/restlet/engine/TemplateDispatcher;

    invoke-direct {v0}, Lorg/restlet/engine/TemplateDispatcher;-><init>()V

    .line 517
    .local v0, "dispatcher":Lorg/restlet/engine/TemplateDispatcher;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/restlet/engine/TemplateDispatcher;->setContext(Lorg/restlet/Context;)V

    .line 518
    new-instance v5, Lorg/restlet/Client;

    invoke-direct {v5, v1}, Lorg/restlet/Client;-><init>(Lorg/restlet/data/Protocol;)V

    invoke-virtual {v0, v5}, Lorg/restlet/engine/TemplateDispatcher;->setNext(Lorg/restlet/Restlet;)V

    .line 519
    move-object v4, v0

    .line 523
    .end local v0    # "dispatcher":Lorg/restlet/engine/TemplateDispatcher;
    .end local v1    # "protocol":Lorg/restlet/data/Protocol;
    .end local v2    # "rProtocol":Lorg/restlet/data/Protocol;
    .end local v3    # "rReference":Lorg/restlet/data/Reference;
    :cond_1
    return-object v4

    .line 511
    .restart local v2    # "rProtocol":Lorg/restlet/data/Protocol;
    .restart local v3    # "rReference":Lorg/restlet/data/Reference;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/restlet/data/Reference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 533
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->createRequest(Lorg/restlet/Request;)Lorg/restlet/Request;

    move-result-object v0

    return-object v0
.end method

.method public createRequest(Lorg/restlet/Request;)Lorg/restlet/Request;
    .locals 1
    .param p1, "prototype"    # Lorg/restlet/Request;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    new-instance v0, Lorg/restlet/Request;

    invoke-direct {v0, p1}, Lorg/restlet/Request;-><init>(Lorg/restlet/Request;)V

    return-object v0
.end method

.method protected createResponse(Lorg/restlet/Request;)Lorg/restlet/Response;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 557
    new-instance v0, Lorg/restlet/Response;

    invoke-direct {v0, p1}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    return-object v0
.end method

.method public delete(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public delete()Lorg/restlet/representation/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public doError(Lorg/restlet/data/Status;)V
    .locals 1
    .param p1, "errorStatus"    # Lorg/restlet/data/Status;

    .prologue
    .line 612
    new-instance v0, Lorg/restlet/resource/ResourceException;

    invoke-direct {v0, p1}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    throw v0
.end method

.method protected doRelease()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/restlet/resource/ClientResource;->nextCreated:Z

    if-eqz v1, :cond_1

    .line 622
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v1

    instance-of v1, v1, Lorg/restlet/Restlet;

    if-eqz v1, :cond_0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v1

    check-cast v1, Lorg/restlet/Restlet;

    invoke-virtual {v1}, Lorg/restlet/Restlet;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ClientResource;->setNext(Lorg/restlet/Uniform;)V

    .line 632
    :cond_1
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/restlet/resource/ResourceException;

    invoke-direct {v1, v0}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->release()V

    .line 640
    return-void
.end method

.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 680
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/restlet/representation/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 658
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public get(Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 700
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 713
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getResponseAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 714
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getChild(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "relativeUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 803
    .local p2, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/restlet/resource/ClientResource;->getChild(Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Lorg/restlet/data/Reference;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "relativeRef"    # Lorg/restlet/data/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/data/Reference;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 761
    .local p2, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v1, 0x0

    .line 762
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ClientResource;->getChild(Lorg/restlet/data/Reference;)Lorg/restlet/resource/ClientResource;

    move-result-object v0

    .line 764
    .local v0, "childResource":Lorg/restlet/resource/ClientResource;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0, p2}, Lorg/restlet/resource/ClientResource;->wrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 768
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method public getChild(Ljava/lang/String;)Lorg/restlet/resource/ClientResource;
    .locals 1
    .param p1, "relativeUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 784
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->getChild(Lorg/restlet/data/Reference;)Lorg/restlet/resource/ClientResource;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Lorg/restlet/data/Reference;)Lorg/restlet/resource/ClientResource;
    .locals 3
    .param p1, "relativeRef"    # Lorg/restlet/data/Reference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 733
    .local v0, "result":Lorg/restlet/resource/ClientResource;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Reference;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    new-instance v0, Lorg/restlet/resource/ClientResource;

    .end local v0    # "result":Lorg/restlet/resource/ClientResource;
    invoke-direct {v0, p0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/resource/ClientResource;)V

    .line 735
    .restart local v0    # "result":Lorg/restlet/resource/ClientResource;
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Lorg/restlet/data/Reference;)V

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->setReference(Lorg/restlet/data/Reference;)V

    .line 742
    :goto_0
    return-object v0

    .line 738
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v2, "The child URI is not relative."

    invoke-virtual {p0, v1, v2}, Lorg/restlet/resource/ClientResource;->doError(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxRedirects()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lorg/restlet/resource/ClientResource;->maxRedirects:I

    return v0
.end method

.method public getNext()Lorg/restlet/Uniform;
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lorg/restlet/resource/ClientResource;->next:Lorg/restlet/Uniform;

    .line 826
    .local v0, "result":Lorg/restlet/Uniform;
    if-nez v0, :cond_1

    .line 827
    monitor-enter p0

    .line 828
    if-nez v0, :cond_0

    .line 829
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->createNext()Lorg/restlet/Uniform;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->setNext(Lorg/restlet/Uniform;)V

    .line 833
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/restlet/resource/ClientResource;->nextCreated:Z

    .line 836
    :cond_0
    monitor-exit p0

    .line 839
    :cond_1
    return-object v0

    .line 836
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOnResponse()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getOnResponse()Lorg/restlet/Uniform;

    move-result-object v0

    return-object v0
.end method

.method public getOnSent()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v0

    return-object v0
.end method

.method public getParent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 895
    .local p1, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v1, 0x0

    .line 897
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getParent()Lorg/restlet/resource/ClientResource;

    move-result-object v0

    .line 898
    .local v0, "parentResource":Lorg/restlet/resource/ClientResource;
    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0, p1}, Lorg/restlet/resource/ClientResource;->wrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 902
    .end local v1    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method public getParent()Lorg/restlet/resource/ClientResource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 869
    const/4 v0, 0x0

    .line 871
    .local v0, "result":Lorg/restlet/resource/ClientResource;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    new-instance v0, Lorg/restlet/resource/ClientResource;

    .end local v0    # "result":Lorg/restlet/resource/ClientResource;
    invoke-direct {v0, p0}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/resource/ClientResource;)V

    .line 873
    .restart local v0    # "result":Lorg/restlet/resource/ClientResource;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getParentRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/resource/ClientResource;->setReference(Lorg/restlet/data/Reference;)V

    .line 879
    :goto_0
    return-object v0

    .line 875
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v2, "The resource URI is not hierarchical."

    invoke-virtual {p0, v1, v2}, Lorg/restlet/resource/ClientResource;->doError(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRetryAttempts()I
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lorg/restlet/resource/ClientResource;->retryAttempts:I

    return v0
.end method

.method public getRetryDelay()J
    .locals 2

    .prologue
    .line 922
    iget-wide v0, p0, Lorg/restlet/resource/ClientResource;->retryDelay:J

    return-wide v0
.end method

.method protected handle(Lorg/restlet/data/Method;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/data/Method;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 968
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handle(Lorg/restlet/data/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/restlet/data/Method;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 1000
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v1

    .line 1001
    .local v1, "cs":Lorg/restlet/service/ConverterService;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    .line 1003
    .local v0, "clientInfo":Lorg/restlet/data/ClientInfo;
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1004
    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lorg/restlet/service/ConverterService;->updatePreferences(Ljava/util/List;Ljava/lang/Class;)V

    .line 1009
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->createRequest()Lorg/restlet/Request;

    move-result-object v3

    .line 1010
    .local v3, "request":Lorg/restlet/Request;
    invoke-virtual {v3, p1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 1011
    invoke-virtual {v3, v0}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 1013
    if-eqz p2, :cond_1

    .line 1014
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lorg/restlet/service/ConverterService;->getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;

    move-result-object v2

    .line 1016
    .local v2, "entityVariants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v6

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7}, Lorg/restlet/service/ConnegService;->getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;

    move-result-object v6

    invoke-virtual {p0, p2, v6}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1025
    .end local v2    # "entityVariants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    :goto_0
    invoke-virtual {p0, v3}, Lorg/restlet/resource/ClientResource;->handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v4

    .line 1026
    .local v4, "response":Lorg/restlet/Response;
    invoke-virtual {p0, v4}, Lorg/restlet/resource/ClientResource;->handleInbound(Lorg/restlet/Response;)Lorg/restlet/representation/Representation;

    move-result-object v5

    .line 1027
    .local v5, "responseEntity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0, v5, p3}, Lorg/restlet/resource/ClientResource;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 1021
    .end local v4    # "response":Lorg/restlet/Response;
    .end local v5    # "responseEntity":Lorg/restlet/representation/Representation;
    :cond_1
    invoke-virtual {v3, v7}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    goto :goto_0
.end method

.method public handle(Lorg/restlet/Request;)Lorg/restlet/Response;
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ClientResource;->handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v0

    return-object v0
.end method

.method public handle()Lorg/restlet/representation/Representation;
    .locals 3

    .prologue
    .line 937
    new-instance v1, Lorg/restlet/Request;

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/Request;-><init>(Lorg/restlet/Request;)V

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ClientResource;->handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v0

    .line 938
    .local v0, "response":Lorg/restlet/Response;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0
.end method

.method protected handle(Lorg/restlet/data/Method;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 950
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/representation/Representation;

    invoke-virtual {p0, p1, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected handle(Lorg/restlet/data/Method;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 982
    const/4 v0, 0x0

    check-cast v0, Lorg/restlet/representation/Representation;

    invoke-virtual {p0, p1, v0, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 1041
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->createRequest()Lorg/restlet/Request;

    move-result-object v0

    .line 1042
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 1043
    invoke-virtual {v0, p2}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1044
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/ClientInfo;)Lorg/restlet/representation/Representation;

    move-result-object v1

    return-object v1
.end method

.method protected handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/ClientInfo;)Lorg/restlet/representation/Representation;
    .locals 3
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "entity"    # Lorg/restlet/representation/Representation;
    .param p3, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 1062
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->createRequest()Lorg/restlet/Request;

    move-result-object v0

    .line 1063
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 1064
    invoke-virtual {v0, p2}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1065
    invoke-virtual {v0, p3}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 1068
    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v1

    .line 1069
    .local v1, "response":Lorg/restlet/Response;
    invoke-virtual {p0, v1}, Lorg/restlet/resource/ClientResource;->handleInbound(Lorg/restlet/Response;)Lorg/restlet/representation/Representation;

    move-result-object v2

    return-object v2
.end method

.method protected handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "entity"    # Lorg/restlet/representation/Representation;
    .param p3, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 1086
    new-instance v0, Lorg/restlet/data/ClientInfo;

    invoke-direct {v0, p3}, Lorg/restlet/data/ClientInfo;-><init>(Lorg/restlet/data/MediaType;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/ClientInfo;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected handle(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V
    .locals 8
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p4, "retryAttempt"    # I
    .param p5, "next"    # Lorg/restlet/Uniform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Lorg/restlet/Response;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;I",
            "Lorg/restlet/Uniform;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "references":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    const-wide/16 v6, -0x1

    .line 1123
    if-eqz p5, :cond_b

    .line 1125
    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 1127
    .local v1, "entity":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->isRequestEntityBuffering()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isTransient()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1131
    new-instance v2, Lorg/restlet/engine/io/BufferingRepresentation;

    invoke-direct {v2, v1}, Lorg/restlet/engine/io/BufferingRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {p1, v2}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1136
    :cond_1
    invoke-interface {p5, p1, p2}, Lorg/restlet/Uniform;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 1139
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->isFollowingRedirects()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isRedirection()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1141
    const/4 v0, 0x0

    .line 1143
    .local v0, "doRedirection":Z
    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Method;->isSafe()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1144
    const/4 v0, 0x1

    .line 1158
    :cond_2
    :goto_0
    if-eqz v0, :cond_8

    .line 1159
    invoke-virtual/range {p0 .. p5}, Lorg/restlet/resource/ClientResource;->redirect(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V

    .line 1175
    .end local v0    # "doRedirection":Z
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 1177
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->isResponseEntityBuffering()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isTransient()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1181
    new-instance v2, Lorg/restlet/engine/io/BufferingRepresentation;

    invoke-direct {v2, v1}, Lorg/restlet/engine/io/BufferingRepresentation;-><init>(Lorg/restlet/representation/Representation;)V

    invoke-virtual {p2, v2}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1188
    .end local v1    # "entity":Lorg/restlet/representation/Representation;
    :cond_5
    :goto_2
    return-void

    .line 1146
    .restart local v0    # "doRedirection":Z
    .restart local v1    # "entity":Lorg/restlet/representation/Representation;
    :cond_6
    sget-object v2, Lorg/restlet/data/Status;->REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1149
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p1, v2}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 1150
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 1151
    const/4 v0, 0x1

    goto :goto_0

    .line 1152
    :cond_7
    sget-object v2, Lorg/restlet/data/Status;->REDIRECTION_USE_PROXY:Lorg/restlet/data/Status;

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    const/4 v0, 0x1

    goto :goto_0

    .line 1161
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to redirect the client call after a response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 1165
    .end local v0    # "doRedirection":Z
    :cond_9
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->isRetryOnError()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Status;->isRecoverableError()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Method;->isIdempotent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRetryAttempts()I

    move-result v2

    if-ge p4, v2, :cond_3

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1171
    :cond_a
    invoke-virtual/range {p0 .. p5}, Lorg/restlet/resource/ClientResource;->retry(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V

    goto/16 :goto_1

    .line 1185
    .end local v1    # "entity":Lorg/restlet/representation/Representation;
    :cond_b
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Request ignored as no next Restlet is available"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public handleInbound(Lorg/restlet/Response;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 1197
    const/4 v0, 0x0

    .line 1200
    .local v0, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Status;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    invoke-virtual {p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ClientResource;->doError(Lorg/restlet/data/Status;)V

    .line 1208
    :cond_0
    :goto_0
    return-object v0

    .line 1204
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_1
.end method

.method public handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 1220
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ClientResource;->createResponse(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v2

    .line 1221
    .local v2, "response":Lorg/restlet/Response;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v5

    .line 1223
    .local v5, "next":Lorg/restlet/Uniform;
    if-eqz v5, :cond_0

    .line 1225
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V

    .line 1228
    invoke-virtual {p0, v2}, Lorg/restlet/resource/ClientResource;->setResponse(Lorg/restlet/Response;)V

    .line 1235
    :goto_0
    return-object v2

    .line 1230
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unable to process the call for a client resource. No next Restlet has been provided."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1244
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getNext()Lorg/restlet/Uniform;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public head()Lorg/restlet/representation/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1266
    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public head(Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1289
    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public isFollowingRedirects()Z
    .locals 1

    .prologue
    .line 1298
    iget-boolean v0, p0, Lorg/restlet/resource/ClientResource;->followingRedirects:Z

    return v0
.end method

.method public isRequestEntityBuffering()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lorg/restlet/resource/ClientResource;->requestEntityBuffering:Z

    return v0
.end method

.method public isResponseEntityBuffering()Z
    .locals 1

    .prologue
    .line 1324
    iget-boolean v0, p0, Lorg/restlet/resource/ClientResource;->responseEntityBuffering:Z

    return v0
.end method

.method public isRetryOnError()Z
    .locals 1

    .prologue
    .line 1334
    iget-boolean v0, p0, Lorg/restlet/resource/ClientResource;->retryOnError:Z

    return v0
.end method

.method public options(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public options()Lorg/restlet/representation/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1349
    sget-object v0, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public options(Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1383
    sget-object v0, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1418
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Object;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1399
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->post(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Object;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1437
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public post(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1453
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1488
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->put(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1507
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;Lorg/restlet/data/MediaType;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public put(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1524
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {p0, v0, p1}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/data/Method;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected redirect(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p4, "retryAttempt"    # I
    .param p5, "next"    # Lorg/restlet/Uniform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Lorg/restlet/Response;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;I",
            "Lorg/restlet/Uniform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1546
    .local p3, "references":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-virtual {p2}, Lorg/restlet/Response;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v6

    .line 1548
    .local v6, "newTargetRef":Lorg/restlet/data/Reference;
    if-eqz p3, :cond_0

    invoke-interface {p3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Infinite redirection loop detected with URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1573
    :goto_0
    return-void

    .line 1552
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1553
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unable to follow the redirection because the request entity isn\'t available anymore."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 1557
    :cond_1
    if-nez p3, :cond_2

    .line 1558
    new-instance p3, Ljava/util/ArrayList;

    .end local p3    # "references":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    .restart local p3    # "references":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getMaxRedirects()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 1562
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Unable to follow the redirection because the request the maximum number of redirections for a single call has been reached."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 1568
    :cond_3
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1569
    invoke-virtual {p1, v6}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 1570
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V

    goto :goto_0
.end method

.method protected retry(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p4, "retryAttempt"    # I
    .param p5, "next"    # Lorg/restlet/Uniform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Lorg/restlet/Response;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Reference;",
            ">;I",
            "Lorg/restlet/Uniform;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1593
    .local p3, "references":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Reference;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A recoverable error was detected ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), attempting again in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRetryDelay()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRetryDelay()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1602
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRetryDelay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :cond_0
    :goto_0
    add-int/lit8 p4, p4, 0x1

    invoke-virtual/range {p0 .. p5}, Lorg/restlet/resource/ClientResource;->handle(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/util/List;ILorg/restlet/Uniform;)V

    .line 1611
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Retry delay sleep was interrupted"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1622
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequestAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    return-void
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 1634
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 1635
    return-void
.end method

.method public setChallengeResponse(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 1650
    new-instance v0, Lorg/restlet/data/ChallengeResponse;

    invoke-direct {v0, p1, p2, p3}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->setChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 1651
    return-void
.end method

.method public setClientInfo(Lorg/restlet/data/ClientInfo;)V
    .locals 1
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 1691
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 1692
    return-void
.end method

.method public setConditions(Lorg/restlet/data/Conditions;)V
    .locals 1
    .param p1, "conditions"    # Lorg/restlet/data/Conditions;

    .prologue
    .line 1702
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setConditions(Lorg/restlet/data/Conditions;)V

    .line 1703
    return-void
.end method

.method public setCookies(Lorg/restlet/util/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1713
    .local p1, "cookies":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Cookie;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setCookies(Lorg/restlet/util/Series;)V

    .line 1714
    return-void
.end method

.method public setEntityBuffering(Z)V
    .locals 0
    .param p1, "entityBuffering"    # Z

    .prologue
    .line 1726
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ClientResource;->setRequestEntityBuffering(Z)V

    .line 1727
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ClientResource;->setResponseEntityBuffering(Z)V

    .line 1728
    return-void
.end method

.method public setFollowingRedirects(Z)V
    .locals 0
    .param p1, "followingRedirects"    # Z

    .prologue
    .line 1737
    iput-boolean p1, p0, Lorg/restlet/resource/ClientResource;->followingRedirects:Z

    .line 1738
    return-void
.end method

.method public setHostRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostUri"    # Ljava/lang/String;

    .prologue
    .line 1759
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setHostRef(Ljava/lang/String;)V

    .line 1760
    return-void
.end method

.method public setHostRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "hostRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1748
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setHostRef(Lorg/restlet/data/Reference;)V

    .line 1749
    return-void
.end method

.method public setLoggable(Z)V
    .locals 1
    .param p1, "loggable"    # Z

    .prologue
    .line 1769
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setLoggable(Z)V

    .line 1770
    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 0
    .param p1, "maxRedirects"    # I

    .prologue
    .line 1781
    iput p1, p0, Lorg/restlet/resource/ClientResource;->maxRedirects:I

    .line 1782
    return-void
.end method

.method public setMethod(Lorg/restlet/data/Method;)V
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 1792
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 1793
    return-void
.end method

.method public setNext(Lorg/restlet/Uniform;)V
    .locals 2
    .param p1, "next"    # Lorg/restlet/Uniform;

    .prologue
    .line 1805
    instance-of v1, p1, Lorg/restlet/Restlet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1806
    check-cast v0, Lorg/restlet/Restlet;

    .line 1808
    .local v0, "nextRestlet":Lorg/restlet/Restlet;
    invoke-virtual {v0}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1809
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V

    .line 1813
    .end local v0    # "nextRestlet":Lorg/restlet/Restlet;
    :cond_0
    iput-object p1, p0, Lorg/restlet/resource/ClientResource;->next:Lorg/restlet/Uniform;

    .line 1816
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/restlet/resource/ClientResource;->nextCreated:Z

    .line 1817
    return-void
.end method

.method public setOnResponse(Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "onResponseCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 1827
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setOnResponse(Lorg/restlet/Uniform;)V

    .line 1828
    return-void
.end method

.method public setOnSent(Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "onSentCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 1837
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setOnSent(Lorg/restlet/Uniform;)V

    .line 1838
    return-void
.end method

.method public setOriginalRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "originalRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1848
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setOriginalRef(Lorg/restlet/data/Reference;)V

    .line 1849
    return-void
.end method

.method public setProtocol(Lorg/restlet/data/Protocol;)V
    .locals 1
    .param p1, "protocol"    # Lorg/restlet/data/Protocol;

    .prologue
    .line 1858
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setProtocol(Lorg/restlet/data/Protocol;)V

    .line 1859
    return-void
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V
    .locals 1
    .param p1, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;

    .prologue
    .line 1663
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 1664
    return-void
.end method

.method public setProxyChallengeResponse(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 1679
    new-instance v0, Lorg/restlet/data/ChallengeResponse;

    invoke-direct {v0, p1, p2, p3}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ClientResource;->setProxyChallengeResponse(Lorg/restlet/data/ChallengeResponse;)V

    .line 1681
    return-void
.end method

.method public setRanges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1869
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setRanges(Ljava/util/List;)V

    .line 1870
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1895
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setResourceRef(Ljava/lang/String;)V

    .line 1896
    return-void
.end method

.method public setReference(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "reference"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1883
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 1884
    return-void
.end method

.method public setReferrerRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrerUri"    # Ljava/lang/String;

    .prologue
    .line 1917
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setReferrerRef(Ljava/lang/String;)V

    .line 1918
    return-void
.end method

.method public setReferrerRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "referrerRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1906
    invoke-virtual {p0}, Lorg/restlet/resource/ClientResource;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setReferrerRef(Lorg/restlet/data/Reference;)V

    .line 1907
    return-void
.end method

.method public setRequestEntityBuffering(Z)V
    .locals 0
    .param p1, "requestEntityBuffering"    # Z

    .prologue
    .line 1931
    iput-boolean p1, p0, Lorg/restlet/resource/ClientResource;->requestEntityBuffering:Z

    .line 1932
    return-void
.end method

.method public setResponseEntityBuffering(Z)V
    .locals 0
    .param p1, "responseEntityBuffering"    # Z

    .prologue
    .line 1945
    iput-boolean p1, p0, Lorg/restlet/resource/ClientResource;->responseEntityBuffering:Z

    .line 1946
    return-void
.end method

.method public setRetryAttempts(I)V
    .locals 0
    .param p1, "retryAttempts"    # I

    .prologue
    .line 1955
    iput p1, p0, Lorg/restlet/resource/ClientResource;->retryAttempts:I

    .line 1956
    return-void
.end method

.method public setRetryDelay(J)V
    .locals 1
    .param p1, "retryDelay"    # J

    .prologue
    .line 1966
    iput-wide p1, p0, Lorg/restlet/resource/ClientResource;->retryDelay:J

    .line 1967
    return-void
.end method

.method public setRetryOnError(Z)V
    .locals 0
    .param p1, "retryOnError"    # Z

    .prologue
    .line 1976
    iput-boolean p1, p0, Lorg/restlet/resource/ClientResource;->retryOnError:Z

    .line 1977
    return-void
.end method

.method public wrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1990
    .local p1, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v1, 0x0

    .line 1993
    .local v1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/restlet/engine/resource/ClientInvocationHandler;

    invoke-direct {v0, p0, p1}, Lorg/restlet/engine/resource/ClientInvocationHandler;-><init>(Lorg/restlet/resource/ClientResource;Ljava/lang/Class;)V

    .line 1997
    .local v0, "h":Ljava/lang/reflect/InvocationHandler;
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/engine/Engine;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/restlet/resource/ClientProxy;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 2001
    return-object v1
.end method
