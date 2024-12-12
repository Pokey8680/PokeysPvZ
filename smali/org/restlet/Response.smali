.class public Lorg/restlet/Response;
.super Lorg/restlet/Message;
.source "Response.java"


# static fields
.field private static final CURRENT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/restlet/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile age:I

.field private volatile allowedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation
.end field

.field private volatile authenticationInfo:Lorg/restlet/data/AuthenticationInfo;

.field private volatile autoCommitting:Z

.field private volatile challengeRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile committed:Z

.field private volatile cookieSettings:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;"
        }
    .end annotation
.end field

.field private volatile dimensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;"
        }
    .end annotation
.end field

.field private volatile locationRef:Lorg/restlet/data/Reference;

.field private volatile proxyChallengeRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private volatile request:Lorg/restlet/Request;

.field private volatile retryAfter:Ljava/util/Date;

.field private volatile serverInfo:Lorg/restlet/data/ServerInfo;

.field private volatile status:Lorg/restlet/data/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/restlet/Response;->CURRENT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/restlet/Request;)V
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Lorg/restlet/Message;-><init>()V

    .line 149
    iput v2, p0, Lorg/restlet/Response;->age:I

    .line 150
    iput-object v1, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/restlet/Response;->autoCommitting:Z

    .line 152
    iput-object v1, p0, Lorg/restlet/Response;->challengeRequests:Ljava/util/List;

    .line 153
    iput-object v1, p0, Lorg/restlet/Response;->cookieSettings:Lorg/restlet/util/Series;

    .line 154
    iput-boolean v2, p0, Lorg/restlet/Response;->committed:Z

    .line 155
    iput-object v1, p0, Lorg/restlet/Response;->dimensions:Ljava/util/Set;

    .line 156
    iput-object v1, p0, Lorg/restlet/Response;->locationRef:Lorg/restlet/data/Reference;

    .line 157
    iput-object v1, p0, Lorg/restlet/Response;->proxyChallengeRequests:Ljava/util/List;

    .line 158
    iput-object p1, p0, Lorg/restlet/Response;->request:Lorg/restlet/Request;

    .line 159
    iput-object v1, p0, Lorg/restlet/Response;->retryAfter:Ljava/util/Date;

    .line 160
    iput-object v1, p0, Lorg/restlet/Response;->serverInfo:Lorg/restlet/data/ServerInfo;

    .line 161
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    iput-object v0, p0, Lorg/restlet/Response;->status:Lorg/restlet/data/Status;

    .line 162
    return-void
.end method

.method public static getCurrent()Lorg/restlet/Response;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/restlet/Response;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/Response;

    return-object v0
.end method

.method public static setCurrent(Lorg/restlet/Response;)V
    .locals 1
    .param p0, "response"    # Lorg/restlet/Response;

    .prologue
    .line 88
    sget-object v0, Lorg/restlet/Response;->CURRENT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 89
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->abort()Z

    .line 170
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/restlet/Request;->commit(Lorg/restlet/Response;)V

    .line 179
    return-void
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lorg/restlet/Response;->age:I

    return v0
.end method

.method public getAllowedMethods()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    .line 209
    .local v0, "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    if-nez v0, :cond_1

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    .local v1, "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 215
    .end local v1    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    .restart local v0    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 217
    :cond_1
    return-object v0

    .line 215
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    .restart local v1    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    .restart local v0    # "a":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    goto :goto_0
.end method

.method public getAuthenticationInfo()Lorg/restlet/data/AuthenticationInfo;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/restlet/Response;->authenticationInfo:Lorg/restlet/data/AuthenticationInfo;

    return-object v0
.end method

.method public getChallengeRequests()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lorg/restlet/Response;->challengeRequests:Ljava/util/List;

    .line 245
    .local v0, "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    if-nez v0, :cond_1

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->challengeRequests:Ljava/util/List;

    .line 248
    if-nez v0, :cond_0

    .line 249
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .local v1, "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Response;->challengeRequests:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 251
    .end local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 253
    :cond_1
    return-object v0

    .line 251
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    goto :goto_0
.end method

.method public getCookieSettings()Lorg/restlet/util/Series;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/restlet/Response;->cookieSettings:Lorg/restlet/util/Series;

    .line 268
    .local v0, "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    if-nez v0, :cond_1

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->cookieSettings:Lorg/restlet/util/Series;

    .line 271
    if-nez v0, :cond_0

    .line 272
    new-instance v1, Lorg/restlet/util/Series;

    const-class v2, Lorg/restlet/data/CookieSetting;

    invoke-direct {v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    .local v1, "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Response;->cookieSettings:Lorg/restlet/util/Series;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 275
    .end local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    .restart local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 277
    :cond_1
    return-object v0

    .line 275
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    .restart local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    .restart local v0    # "c":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    goto :goto_0
.end method

.method public getDimensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lorg/restlet/Response;->dimensions:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/restlet/Response;->dimensions:Ljava/util/Set;

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/restlet/Response;->dimensions:Ljava/util/Set;

    return-object v0
.end method

.method public getLocationRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/restlet/Response;->locationRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getProxyChallengeRequests()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lorg/restlet/Response;->proxyChallengeRequests:Ljava/util/List;

    .line 323
    .local v0, "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    if-nez v0, :cond_1

    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->proxyChallengeRequests:Ljava/util/List;

    .line 326
    if-nez v0, :cond_0

    .line 327
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .local v1, "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Response;->proxyChallengeRequests:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 329
    .end local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 331
    :cond_1
    return-object v0

    .line 329
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    .restart local v0    # "cr":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    goto :goto_0
.end method

.method public getRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/restlet/Response;->request:Lorg/restlet/Request;

    return-object v0
.end method

.method public getRetryAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/restlet/Response;->retryAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getServerInfo()Lorg/restlet/data/ServerInfo;
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lorg/restlet/Response;->serverInfo:Lorg/restlet/data/ServerInfo;

    .line 365
    .local v0, "s":Lorg/restlet/data/ServerInfo;
    if-nez v0, :cond_1

    .line 366
    monitor-enter p0

    .line 367
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->serverInfo:Lorg/restlet/data/ServerInfo;

    .line 368
    if-nez v0, :cond_0

    .line 369
    new-instance v1, Lorg/restlet/data/ServerInfo;

    invoke-direct {v1}, Lorg/restlet/data/ServerInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "s":Lorg/restlet/data/ServerInfo;
    .local v1, "s":Lorg/restlet/data/ServerInfo;
    :try_start_1
    iput-object v1, p0, Lorg/restlet/Response;->serverInfo:Lorg/restlet/data/ServerInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 371
    .end local v1    # "s":Lorg/restlet/data/ServerInfo;
    .restart local v0    # "s":Lorg/restlet/data/ServerInfo;
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 373
    :cond_1
    return-object v0

    .line 371
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "s":Lorg/restlet/data/ServerInfo;
    .restart local v1    # "s":Lorg/restlet/data/ServerInfo;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "s":Lorg/restlet/data/ServerInfo;
    .restart local v0    # "s":Lorg/restlet/data/ServerInfo;
    goto :goto_0
.end method

.method public getStatus()Lorg/restlet/data/Status;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/restlet/Response;->status:Lorg/restlet/data/Status;

    return-object v0
.end method

.method public isAutoCommitting()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lorg/restlet/Response;->autoCommitting:Z

    return v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/restlet/Response;->committed:Z

    return v0
.end method

.method public isConfidential()Z
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->isConfidential()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProvisional()Z
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/Status;->isInformational()Z

    move-result v0

    return v0
.end method

.method public redirectPermanent(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    .line 458
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_PERMANENT:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 459
    return-void
.end method

.method public redirectPermanent(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 442
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_PERMANENT:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 443
    return-void
.end method

.method public redirectSeeOther(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 493
    return-void
.end method

.method public redirectSeeOther(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 473
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 474
    return-void
.end method

.method public redirectTemporary(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    .line 520
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_TEMPORARY:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 521
    return-void
.end method

.method public redirectTemporary(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 503
    invoke-virtual {p0, p1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 504
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_TEMPORARY:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 505
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 535
    iput p1, p0, Lorg/restlet/Response;->age:I

    .line 536
    return-void
.end method

.method public setAllowedMethods(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "allowedMethods":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 551
    :try_start_0
    iget-object v0, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    if-eq p1, v0, :cond_0

    .line 552
    iget-object v0, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 554
    if-eqz p1, :cond_0

    .line 555
    iget-object v0, p0, Lorg/restlet/Response;->allowedMethods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 558
    :cond_0
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)V
    .locals 0
    .param p1, "authenticationInfo"    # Lorg/restlet/data/AuthenticationInfo;

    .prologue
    .line 573
    iput-object p1, p0, Lorg/restlet/Response;->authenticationInfo:Lorg/restlet/data/AuthenticationInfo;

    .line 574
    return-void
.end method

.method public setAutoCommitting(Z)V
    .locals 0
    .param p1, "autoCommitting"    # Z

    .prologue
    .line 583
    iput-boolean p1, p0, Lorg/restlet/Response;->autoCommitting:Z

    .line 584
    return-void
.end method

.method public setChallengeRequests(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "challengeRequests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 598
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 599
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    if-eqz p1, :cond_0

    .line 602
    invoke-virtual {p0}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    :cond_0
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCommitted(Z)V
    .locals 0
    .param p1, "committed"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lorg/restlet/Response;->committed:Z

    .line 616
    return-void
.end method

.method public setCookieSettings(Lorg/restlet/util/Series;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "cookieSettings":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v1

    monitor-enter v1

    .line 629
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/util/Series;->clear()V

    .line 632
    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lorg/restlet/Response;->getCookieSettings()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/util/Series;->addAll(Ljava/util/Collection;)Z

    .line 636
    :cond_0
    monitor-exit v1

    .line 637
    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDimensions(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p1, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Dimension;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 653
    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p0}, Lorg/restlet/Response;->getDimensions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_0
    monitor-exit v1

    .line 658
    return-void

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLocationRef(Ljava/lang/String;)V
    .locals 2
    .param p1, "locationUri"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "baseRef":Lorg/restlet/data/Reference;
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 691
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v0

    .line 697
    :cond_0
    :goto_0
    new-instance v1, Lorg/restlet/data/Reference;

    invoke-direct {v1, v0, p1}, Lorg/restlet/data/Reference;-><init>(Lorg/restlet/data/Reference;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 698
    return-void

    .line 693
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method public setLocationRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "locationRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 669
    iput-object p1, p0, Lorg/restlet/Response;->locationRef:Lorg/restlet/data/Reference;

    .line 670
    return-void
.end method

.method public setProxyChallengeRequests(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "proxyChallengeRequests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 714
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 715
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 717
    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p0}, Lorg/restlet/Response;->getProxyChallengeRequests()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 721
    :cond_0
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRequest(Lorg/restlet/Request;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 731
    iput-object p1, p0, Lorg/restlet/Response;->request:Lorg/restlet/Request;

    .line 732
    return-void
.end method

.method public setRetryAfter(Ljava/util/Date;)V
    .locals 0
    .param p1, "retryAfter"    # Ljava/util/Date;

    .prologue
    .line 745
    iput-object p1, p0, Lorg/restlet/Response;->retryAfter:Ljava/util/Date;

    .line 746
    return-void
.end method

.method public setServerInfo(Lorg/restlet/data/ServerInfo;)V
    .locals 0
    .param p1, "serverInfo"    # Lorg/restlet/data/ServerInfo;

    .prologue
    .line 755
    iput-object p1, p0, Lorg/restlet/Response;->serverInfo:Lorg/restlet/data/ServerInfo;

    .line 756
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;)V
    .locals 0
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 765
    iput-object p1, p0, Lorg/restlet/Response;->status:Lorg/restlet/data/Status;

    .line 766
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 777
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 778
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 789
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 790
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 803
    new-instance v0, Lorg/restlet/data/Status;

    invoke-direct {v0, p1, p2, p3}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 804
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Request;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v0

    goto :goto_0
.end method
