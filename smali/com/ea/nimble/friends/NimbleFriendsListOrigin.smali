.class public Lcom/ea/nimble/friends/NimbleFriendsListOrigin;
.super Lcom/ea/nimble/friends/NimbleFriendsListImpl;
.source "NimbleFriendsListOrigin.java"


# static fields
.field private static GET_FRIENDS_AVATAR_URI:Ljava/lang/String;

.field private static GET_FRIENDS_URI_PARAMS:Ljava/lang/String;


# instance fields
.field private lastError:Lcom/ea/nimble/friends/NimbleFriendsError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "/friends/2/users/%s/friends?start=%d&size=%d&names=%s"

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->GET_FRIENDS_URI_PARAMS:Ljava/lang/String;

    .line 46
    const-string v0, "/avatar/user/%s/avatars"

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->GET_FRIENDS_AVATAR_URI:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 54
    const-string v0, "NimbleFriendsListOrigin"

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->LOG_SOURCE_TITLE:Ljava/lang/String;

    .line 57
    const-string v0, "origin"

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    .line 59
    const-string v0, "Constructed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/16 v0, 0x14

    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_pageSize:I

    .line 67
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsList;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/friends/NimbleFriendsList;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    .line 68
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsList;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/friends/NimbleFriendsList;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p7, "x7"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p8, "x8"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p8}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->sendGosRefreshFriendsRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p5, "x5"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p6, "x6"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p6}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->sendGosRefreshAvatarsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->parseAvatarInfoXml(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getMdmAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getGosMdmAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOriginAvatarsUrlFromSynergy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "avatars.url"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "originAvatarsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 555
    :cond_0
    const/4 v1, 0x0

    .line 567
    :goto_0
    return-object v1

    .line 561
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 563
    const/4 v1, 0x0

    .line 564
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 563
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 567
    goto :goto_0
.end method

.method private getOriginFriendsUrlFromSynergy()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    const-string v2, "eadp.friends.host"

    invoke-interface {v1, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "originFriendsUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 527
    :cond_0
    const/4 v1, 0x0

    .line 539
    :goto_0
    return-object v1

    .line 533
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_2

    .line 535
    const/4 v1, 0x0

    .line 536
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 535
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 539
    goto :goto_0
.end method

.method private makeGetFriendsAvatarInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ea/nimble/HttpRequest;
    .locals 12
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "tokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/nimble/HttpRequest;"
        }
    .end annotation

    .prologue
    .local p3, "friendsPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 459
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->getOriginAvatarsUrlFromSynergy()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "avatarUrl":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object v5

    .line 466
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x14

    if-gt v8, v9, :cond_0

    .line 471
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 476
    const/4 v5, 0x0

    .line 480
    .local v5, "request":Lcom/ea/nimble/HttpRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v2, "friendsPidsBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    .local v4, "pid":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v9, ";"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 488
    .end local v4    # "pid":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 490
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->GET_FRIENDS_AVATAR_URI:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 492
    .local v7, "uriParams":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :try_start_0
    new-instance v6, Lcom/ea/nimble/HttpRequest;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .local v6, "request":Lcom/ea/nimble/HttpRequest;
    :try_start_1
    sget-object v8, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v8, v6, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 499
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "AuthToken"

    invoke-virtual {v3, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iput-object v3, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 508
    .end local v6    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_0

    .line 505
    .end local v3    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when creating GOS getAvatarInfo request URL. Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 505
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v6    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_2
.end method

.method private makeGetFriendsRequest(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;
    .locals 13
    .param p1, "start"    # I
    .param p2, "size"    # I
    .param p3, "includeDisplayNames"    # Z
    .param p4, "accessToken"    # Ljava/lang/String;
    .param p5, "tokenTYpe"    # Ljava/lang/String;
    .param p6, "usersOriginPid"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->getOriginFriendsUrlFromSynergy()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "friendsUrl":Ljava/lang/String;
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->getMdmAppKey()Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "mdmAppKey":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 393
    :cond_0
    const-string v9, "Failed to create GOS friends request because access token for Origin is null or invalid"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    const/4 v5, 0x0

    .line 454
    :goto_0
    return-object v5

    .line 397
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_3

    .line 399
    :cond_2
    const-string v9, "Failed to create GOS friends request because GOS request URL is null or invalid"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    const/4 v5, 0x0

    goto :goto_0

    .line 403
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 405
    :cond_4
    const-string v9, "Failed to create GOS friends request because MDM App Key is null or invalid"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    const/4 v5, 0x0

    goto :goto_0

    .line 409
    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_7

    .line 411
    :cond_6
    const-string v9, "Failed to create GOS friends request because Origin user\'s PID is null or invalid"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    const/4 v5, 0x0

    goto :goto_0

    .line 415
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "token":Ljava/lang/String;
    const/4 v5, 0x0

    .line 424
    .local v5, "request":Lcom/ea/nimble/HttpRequest;
    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_8

    .line 426
    sget-object v9, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->GET_FRIENDS_URI_PARAMS:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p6, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "true"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 434
    .local v8, "uriParams":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    :try_start_0
    new-instance v6, Lcom/ea/nimble/HttpRequest;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .local v6, "request":Lcom/ea/nimble/HttpRequest;
    :try_start_1
    sget-object v9, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v9, v6, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 441
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "Authorization"

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v9, "X-Application-Key"

    invoke-virtual {v3, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v9, "X-Api-Version"

    const-string v10, "2"

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iput-object v3, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 452
    .end local v6    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    goto/16 :goto_0

    .line 431
    .end local v3    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "uriParams":Ljava/lang/String;
    :cond_8
    sget-object v9, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->GET_FRIENDS_URI_PARAMS:Ljava/lang/String;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p6, v10, v11

    const/4 v11, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "false"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "uriParams":Ljava/lang/String;
    goto :goto_1

    .line 449
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/net/MalformedURLException;
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception when creating GOS getFreindList request URL. Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .end local v5    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v6    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v5    # "request":Lcom/ea/nimble/HttpRequest;
    goto :goto_2
.end method

.method private parseAvatarInfoXml(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 585
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 586
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v13

    .line 587
    .local v13, "statusCode":I
    const-string v8, ""

    .line 590
    .local v8, "message":Ljava/lang/String;
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v13, v0, :cond_0

    .line 592
    packed-switch v13, :pswitch_data_0

    .line 610
    const-string v8, "Avatar Info HTTP Resonse Error"

    .line 611
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 616
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    move-object/from16 v17, v0

    throw v17

    .line 596
    :pswitch_0
    const-string v17, "Avatar Info HTTP Resonse Error. Description: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "The indicated parameter is empty or invalid."

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 597
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    goto :goto_0

    .line 603
    :pswitch_1
    const-string v17, "Avatar Info HTTP Resonse Error. Description: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "The specified AuthToken is empty or invalid."

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 604
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    goto :goto_0

    .line 621
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v12

    .line 624
    .local v12, "responseData":Ljava/io/InputStream;
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 626
    :cond_1
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v18

    .line 627
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v17

    .line 630
    :cond_2
    const/4 v5, 0x0

    .line 631
    .local v5, "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    const/4 v14, 0x0

    .line 636
    .local v14, "user":Lcom/ea/nimble/friends/NimbleUser;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 637
    .local v11, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 639
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v17, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 640
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v10, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 643
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .local v4, "eventType":I
    move-object v15, v14

    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .local v15, "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v6, v5

    .line 646
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .local v6, "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_6

    .line 648
    const/4 v9, 0x0

    .line 649
    .local v9, "name":Ljava/lang/String;
    packed-switch v4, :pswitch_data_1

    :cond_3
    :pswitch_2
    move-object v14, v15

    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v5, v6

    .line 705
    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :goto_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move-object v15, v14

    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v6, v5

    .line 706
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_1

    .line 654
    :pswitch_3
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    move-object v14, v15

    .line 656
    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    goto :goto_2

    .line 661
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :pswitch_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 662
    const-string v17, "user"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 664
    new-instance v14, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v14}, Lcom/ea/nimble/friends/NimbleUser;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 665
    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :try_start_2
    const-string v17, "origin"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/ea/nimble/friends/NimbleUser;->setAuthenticatorId(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_2

    .line 668
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :cond_4
    if-eqz v15, :cond_3

    .line 670
    :try_start_3
    const-string v17, "userId"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 672
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    .line 673
    .local v16, "userId":Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Lcom/ea/nimble/friends/NimbleUser;->setUserId(Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {v15 .. v16}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    move-object v14, v15

    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v5, v6

    .line 675
    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_2

    .line 677
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .end local v16    # "userId":Ljava/lang/String;
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :cond_5
    const-string v17, "link"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 679
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    .line 680
    .local v7, "imageLink":Ljava/lang/String;
    invoke-virtual {v15, v7}, Lcom/ea/nimble/friends/NimbleUser;->setImageUrl(Ljava/lang/String;)V

    move-object v14, v15

    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v5, v6

    .line 681
    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_2

    .line 689
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v7    # "imageLink":Ljava/lang/String;
    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :pswitch_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 690
    const-string v17, "user"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    if-eqz v15, :cond_3

    .line 692
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 695
    const/4 v14, 0x0

    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v5, v6

    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_2

    .line 709
    .end local v4    # "eventType":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_0
    move-exception v3

    .line 711
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    const-string v17, "Parsing of GOS Avatar Info XML raised an exception. Details: %s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    new-instance v17, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v19, "Failed to parse the response XML from GOS Avatar service"

    invoke-direct/range {v17 .. v19}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    move-object/from16 v17, v0

    throw v17

    .line 717
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v4    # "eventType":I
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    :cond_6
    return-object v6

    .line 709
    .restart local v9    # "name":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v14, v15

    .end local v15    # "user":Lcom/ea/nimble/friends/NimbleUser;
    .restart local v14    # "user":Lcom/ea/nimble/friends/NimbleUser;
    move-object v5, v6

    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_3

    .end local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v5    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    goto :goto_3

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;
    .locals 24
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 726
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v16

    .line 727
    .local v16, "responseData":Ljava/io/InputStream;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 730
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_1

    .line 732
    :cond_0
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v19

    .line 733
    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v18

    .line 744
    :cond_1
    new-instance v18, Ljava/util/Scanner;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v19, "\\A"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v17

    .line 745
    .local v17, "s":Ljava/util/Scanner;
    const-string v4, ""

    .line 746
    .local v4, "data":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 747
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    .line 750
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/Scanner;->close()V

    .line 752
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v13, "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 759
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 761
    .local v14, "jsonObj":Lorg/json/JSONObject;
    if-eqz v14, :cond_4

    .line 764
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 766
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 768
    .local v9, "errorObject":Lorg/json/JSONObject;
    const-string v18, "type"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 769
    .local v10, "errorString":Ljava/lang/String;
    const-string v18, "code"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 771
    .local v8, "errorCode":I
    if-eqz v10, :cond_3

    .line 772
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 774
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v20, "Code: %d, Type: %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 775
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    .line 778
    :cond_3
    const/4 v13, 0x0

    .line 853
    .end local v8    # "errorCode":I
    .end local v9    # "errorObject":Lorg/json/JSONObject;
    .end local v10    # "errorString":Ljava/lang/String;
    .end local v13    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_4
    :goto_0
    return-object v13

    .line 782
    .restart local v13    # "gosFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_5
    const-string v18, "entries"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 784
    .local v11, "friendsArray":Lorg/json/JSONArray;
    if-eqz v11, :cond_7

    .line 785
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_7

    .line 787
    const/4 v3, 0x0

    .local v3, "count":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_4

    .line 789
    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 790
    .local v12, "friendsObj":Lorg/json/JSONObject;
    if-eqz v12, :cond_6

    .line 792
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->createNimbleUser(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;

    move-result-object v15

    .line 794
    .local v15, "nimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {v15}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v15}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 796
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    .end local v15    # "nimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 803
    .end local v3    # "count":I
    .end local v12    # "friendsObj":Lorg/json/JSONObject;
    :cond_7
    if-eqz v11, :cond_8

    .line 804
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-nez v18, :cond_8

    .line 806
    const-string v18, "GOS response indicates there are no friends for this Origin user"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 807
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 836
    .end local v11    # "friendsArray":Lorg/json/JSONArray;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 838
    .local v5, "e":Lorg/json/JSONException;
    const-string v18, "Exception when parsing JSON response. Error: %s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    goto/16 :goto_0

    .line 814
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v11    # "friendsArray":Lorg/json/JSONArray;
    .restart local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_8
    :try_start_1
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 815
    .restart local v9    # "errorObject":Lorg/json/JSONObject;
    const-string v7, ""

    .line 817
    .local v7, "errMessage":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 819
    const-string v18, "code"

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 820
    .local v6, "errCode":I
    const-string v18, "type"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 822
    const-string v18, "Server error when retrieving GOS Friends. Code = %d, Message = %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    goto/16 :goto_0

    .line 828
    .end local v6    # "errCode":I
    :cond_9
    const-string v7, "Generic Server error when retrieving GOS Friends."

    .line 829
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v7, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 846
    .end local v7    # "errMessage":Ljava/lang/String;
    .end local v9    # "errorObject":Lorg/json/JSONObject;
    .end local v11    # "friendsArray":Lorg/json/JSONArray;
    .end local v14    # "jsonObj":Lorg/json/JSONObject;
    :cond_a
    const-string v7, "Generic Server error when retrieving GOS Friends."

    .line 847
    .restart local v7    # "errMessage":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v7, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    new-instance v18, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v19, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->lastError:Lcom/ea/nimble/friends/NimbleFriendsError;

    goto/16 :goto_0
.end method

.method private sendGosRefreshAvatarsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 9
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "tokenType"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p5, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p6, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "friendsPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 316
    .local v4, "message":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->makeGetFriendsAvatarInfoRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ea/nimble/HttpRequest;

    move-result-object v8

    .line 317
    .local v8, "getAvatarsRequest":Lcom/ea/nimble/HttpRequest;
    if-nez v8, :cond_0

    .line 319
    const-string v4, "Failed to create HTTP Request for GOS getAvatarInfo"

    .line 321
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p6

    move-object v2, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 384
    .end local v8    # "getAvatarsRequest":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 328
    .restart local v8    # "getAvatarsRequest":Lcom/ea/nimble/HttpRequest;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;

    invoke-direct {v1, p0, p6, p5, p4}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    invoke-interface {v0, v8, v1}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    .end local v8    # "getAvatarsRequest":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v6

    .line 380
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Exception raised when creating GoS Avatar URL refresh request. Exception: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    new-instance v7, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "Failed to process request for Avatar Info"

    invoke-direct {v7, v0, v1}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 382
    .local v7, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    invoke-virtual {p0, p6, p5, v7, p4}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0
.end method

.method private sendGosRefreshFriendsRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 13
    .param p1, "startIndex"    # I
    .param p2, "range"    # I
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "tokenType"    # Ljava/lang/String;
    .param p5, "originPid"    # Ljava/lang/String;
    .param p6, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p7, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p8, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .prologue
    .line 150
    const-string v12, ""

    .line 156
    .local v12, "message":Ljava/lang/String;
    const/4 v6, 0x1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    :try_start_0
    invoke-direct/range {v3 .. v9}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->makeGetFriendsRequest(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/HttpRequest;

    move-result-object v11

    .line 157
    .local v11, "getFriendsRequest":Lcom/ea/nimble/HttpRequest;
    if-nez v11, :cond_0

    .line 159
    const-string v7, "Failed to create HTTP Request for GOS getFriendsList"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v12    # "message":Ljava/lang/String;
    .local v7, "message":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v7, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget-object v6, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 233
    .end local v11    # "getFriendsRequest":Lcom/ea/nimble/HttpRequest;
    :goto_0
    return-void

    .line 168
    .end local v7    # "message":Ljava/lang/String;
    .restart local v11    # "getFriendsRequest":Lcom/ea/nimble/HttpRequest;
    .restart local v12    # "message":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;

    move-object/from16 v0, p8

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    invoke-interface {v3, v11, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v12

    .line 232
    .end local v12    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_0

    .line 226
    .end local v7    # "message":Ljava/lang/String;
    .end local v11    # "getFriendsRequest":Lcom/ea/nimble/HttpRequest;
    .restart local v12    # "message":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v7, v12

    .line 228
    .end local v12    # "message":Ljava/lang/String;
    .restart local v7    # "message":Ljava/lang/String;
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "Authenticator (%s) does not support Identity Refresh for Friends List"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 229
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v7, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    sget-object v6, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 226
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "getFriendsRequest":Lcom/ea/nimble/HttpRequest;
    :catch_1
    move-exception v10

    goto :goto_1
.end method


# virtual methods
.method protected createNimbleUser(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;
    .locals 9
    .param p1, "friend"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 859
    new-instance v1, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleUser;-><init>()V

    .line 863
    .local v1, "user":Lcom/ea/nimble/friends/NimbleUser;
    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setAuthenticatorId(Ljava/lang/String;)V

    .line 864
    const-string v2, "displayName"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setDisplayName(Ljava/lang/String;)V

    .line 865
    const-string v2, "friendType"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setFriendType(Ljava/lang/String;)V

    .line 866
    const-string v2, "userId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setUserId(Ljava/lang/String;)V

    .line 867
    const-string v2, "personaId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPersonaId(Ljava/lang/String;)V

    .line 868
    const-string v2, "userId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    .line 870
    const-string v2, "timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 872
    new-instance v2, Ljava/util/Date;

    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setRefreshTimestamp(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    return-object v1

    .line 876
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception when parsing JSON for Friends. Message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->getLogSourceTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 17
    .param p1, "startIndex"    # I
    .param p2, "range"    # I
    .param p3, "lastUid"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p5, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p6, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .prologue
    .line 75
    const-string v5, ""

    .line 80
    .local v5, "message":Ljava/lang/String;
    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 82
    const-string v5, "Origin Friends Service does not support getting friends with PlayedCurrentGame flag"

    .line 84
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 139
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v1, "com.ea.nimble.identity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string v5, "Unable to refresh friends Identity information because NimbleIdentity is not available"

    .line 93
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "com.ea.nimble.identity"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v14

    check-cast v14, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 102
    .local v14, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    invoke-interface {v14, v1}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v16

    .line 103
    .local v16, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    const/4 v15, 0x0

    .line 105
    .local v15, "pid":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 107
    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v15

    .line 110
    :cond_2
    invoke-static {v15}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 112
    sget-object v9, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v10, "Origin PID for the current user is not available."

    move-object/from16 v6, p0

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 119
    :cond_3
    move-object v13, v15

    .line 122
    .local v13, "originPid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    invoke-interface {v14, v1}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    new-instance v6, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$1;

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-direct/range {v6 .. v13}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$1;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;IILjava/lang/String;)V

    invoke-interface {v1, v6}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method

.method protected refreshFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;)V
    .locals 6
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p4, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "Origin Friends Service does not support IdentityInfo refresh because Origin friends already have Identity information"

    .line 246
    .local v4, "message":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 248
    return-void
.end method

.method protected refreshFriendsListImageUrl(Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 12
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p4, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, ""

    .line 260
    .local v4, "message":Ljava/lang/String;
    const-string v0, "com.ea.nimble.identity"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    const-string v4, "Unable to refresh friends Avatar information because NimbleIdentity is not available"

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object/from16 v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 301
    :goto_0
    return-void

    .line 271
    :cond_0
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v11

    check-cast v11, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 273
    .local v11, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    if-nez v11, :cond_1

    .line 275
    const-string v4, "Identity Component not found. Not able to get friends Avatars."

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object/from16 v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->m_authenticatorId:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    new-instance v5, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;

    move-object v6, p0

    move-object/from16 v7, p4

    move-object v8, p3

    move-object v9, p2

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Ljava/util/List;)V

    invoke-interface {v0, v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    goto :goto_0
.end method
