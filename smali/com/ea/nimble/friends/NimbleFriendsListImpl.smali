.class abstract Lcom/ea/nimble/friends/NimbleFriendsListImpl;
.super Ljava/lang/Object;
.source "NimbleFriendsListImpl.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field protected LOG_SOURCE_TITLE:Ljava/lang/String;

.field protected m_authenticatorId:Ljava/lang/String;

.field protected m_friends:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;"
        }
    .end annotation
.end field

.field protected m_friendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

.field protected m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

.field protected m_pageSize:I

.field protected m_playedFriendsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_totalFriends:I

.field protected m_totalPlayedFriends:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    .line 43
    iput v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    .line 46
    iput v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    .line 55
    const-string v0, "NimbleFriendsListImpl"

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->LOG_SOURCE_TITLE:Ljava/lang/String;

    .line 59
    const/16 v0, 0x64

    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    .line 75
    const-string v0, "No default implementation for NimbleFriendsListImpl - Must construct a typed-NimbleFriendsListImpl"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method private environmentCheck()Lcom/ea/nimble/Error;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1146
    const/4 v0, 0x0

    .line 1147
    .local v0, "environmentError":Lcom/ea/nimble/Error;
    const-string v2, ""

    .line 1149
    .local v2, "errMsg":Ljava/lang/String;
    const-string v3, "Environment Check -->"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1152
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v3, v4, :cond_0

    .line 1154
    const-string v3, "Environment Check - Network unavailable"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    const-string v2, "Friends component cannot do updates without network"

    .line 1156
    new-instance v0, Lcom/ea/nimble/Error;

    .end local v0    # "environmentError":Lcom/ea/nimble/Error;
    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    invoke-direct {v0, v3, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .restart local v0    # "environmentError":Lcom/ea/nimble/Error;
    move-object v1, v0

    .line 1171
    .end local v0    # "environmentError":Lcom/ea/nimble/Error;
    .local v1, "environmentError":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1162
    .end local v1    # "environmentError":Ljava/lang/Object;
    .restart local v0    # "environmentError":Lcom/ea/nimble/Error;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1164
    const-string v3, "Environment Check - Synergy Environment Not Ready"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    const-string v2, "Friends component is still in initialization and not ready for operation"

    .line 1166
    new-instance v0, Lcom/ea/nimble/Error;

    .end local v0    # "environmentError":Lcom/ea/nimble/Error;
    sget-object v3, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-direct {v0, v3, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .restart local v0    # "environmentError":Lcom/ea/nimble/Error;
    move-object v1, v0

    .line 1168
    .restart local v1    # "environmentError":Ljava/lang/Object;
    goto :goto_0

    .end local v1    # "environmentError":Ljava/lang/Object;
    :cond_1
    move-object v1, v0

    .line 1171
    .restart local v1    # "environmentError":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized clear()V
    .locals 1

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1020
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1022
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1025
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    .line 1026
    const/4 v0, -0x1

    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    monitor-exit p0

    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract createNimbleUser(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;
.end method

.method getFriendsList(Z)Lcom/ea/nimble/friends/NimbleFriendsList;
    .locals 2
    .param p1, "playedCurrentGameOnly"    # Z

    .prologue
    .line 81
    monitor-enter p0

    .line 83
    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    const-string v0, "Returning NimbleFriendsList with playedCurrentGameOnly flag returned"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    monitor-exit p0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "Returning NimbleFriendsList with all friends"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    monitor-exit p0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->LOG_SOURCE_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method protected getPageSize()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    return v0
.end method

.method invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 3
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p3, "error"    # Lcom/ea/nimble/Error;
    .param p4, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .prologue
    const/4 v2, 0x0

    .line 445
    if-eqz p2, :cond_0

    .line 447
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v0}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 448
    .local v0, "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    iput-boolean v2, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 449
    iput-object p3, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 450
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 451
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 452
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 453
    iput-boolean v2, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 455
    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p4, v1, :cond_1

    .line 457
    iget v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 458
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v1, p1, v0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 466
    .end local v0    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local v0    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_1
    iget v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 463
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v1, p1, v0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0
.end method

.method invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 4
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p3, "code"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p4, "errMessage"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .prologue
    const/4 v3, 0x0

    .line 414
    if-eqz p2, :cond_0

    .line 416
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-direct {v0, p3, p4}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 418
    .local v0, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 419
    .local v1, "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    iput-boolean v3, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 420
    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 421
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 422
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v2

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 423
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v2

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 424
    iput-boolean v3, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 426
    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p5, v2, :cond_1

    .line 428
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 429
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v2, p1, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 438
    .end local v0    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 433
    .restart local v0    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    .restart local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_1
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 434
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v2, p1, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0
.end method

.method invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 2
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p3, "error"    # Lcom/ea/nimble/Error;
    .param p4, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .prologue
    .line 389
    if-eqz p2, :cond_0

    .line 391
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct {v0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 392
    .local v0, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 393
    iput-object p3, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 394
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 396
    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p4, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v1, p1, v0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 406
    .end local v0    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v0    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v1, p1, v0}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0
.end method

.method invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 3
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p3, "code"    # Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .param p4, "errMessage"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .prologue
    .line 366
    if-eqz p2, :cond_0

    .line 368
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-direct {v0, p3, p4}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 370
    .local v0, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 371
    .local v1, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 372
    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 373
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 375
    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p5, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v2, p1, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 384
    .end local v0    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 381
    .restart local v0    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    .restart local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p2, v2, p1, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0
.end method

.method protected isNimbleComponentAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, "bRet":Z
    invoke-static {p1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 565
    const/4 v0, 0x1

    .line 568
    :cond_0
    return v0
.end method

.method protected refreshFriendsList(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 30
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p3, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 103
    const-string v5, "refreshFriendsList API called"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-string v9, ""

    .line 105
    .local v9, "message":Ljava/lang/String;
    const-string v28, ""

    .line 106
    .local v28, "strType":Ljava/lang/String;
    const/16 v24, 0x0

    .line 107
    .local v24, "currentHighestIndex":I
    const-string v13, ""

    .line 110
    .local v13, "lastUid":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v25

    .line 111
    .local v25, "err":Lcom/ea/nimble/Error;
    if-eqz v25, :cond_1

    .line 113
    if-eqz p2, :cond_0

    .line 115
    new-instance v27, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct/range {v27 .. v27}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 116
    .local v27, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 117
    const/4 v5, 0x0

    move-object/from16 v0, v27

    iput-boolean v5, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 118
    const/4 v5, 0x0

    move-object/from16 v0, v27

    iput-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 120
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-interface {v0, v5, v1, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 358
    .end local v27    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_3

    .line 128
    const-string v28, "ALL_FRIENDS"

    .line 129
    const-string v5, "Refresh API called for All Friends List"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v24, v5, -0x1

    .line 151
    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 153
    const-string v9, "NimbleFriendsRefreshScope is null. Unable to process the request"

    .line 154
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v28, "CURRENT_GAME_FRIENDS"

    .line 139
    const-string v5, "Refresh API called for Played Current Game Friends List"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v24, v5, -0x1

    goto :goto_1

    .line 162
    :cond_4
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    if-eqz v5, :cond_11

    move-object/from16 v16, p1

    .line 164
    check-cast v16, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .line 166
    .local v16, "basicScope":Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v11

    .line 167
    .local v11, "startIndex":I
    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v12

    .line 168
    .local v12, "range":I
    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getNextPage()Z

    move-result v26

    .line 171
    .local v26, "nextPage":Z
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_7

    .line 173
    const-string v5, "Refresh API is called to get the next page of friends"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    const/4 v11, 0x0

    .line 176
    move-object/from16 v0, p0

    iget v12, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    .line 178
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 182
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastUid":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 183
    .restart local v13    # "lastUid":Ljava/lang/String;
    move/from16 v11, v24

    .line 194
    :cond_5
    :goto_2
    const-string v5, "Refreshing next page for Type = %s, Start Index = %d, Range = %d, Last UID: %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v13, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v10, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    .line 195
    invoke-virtual/range {v10 .. v16}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    goto/16 :goto_0

    .line 186
    :cond_6
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastUid":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 191
    .restart local v13    # "lastUid":Ljava/lang/String;
    move/from16 v11, v24

    goto :goto_2

    .line 203
    :cond_7
    const-string v13, ""

    .line 207
    if-gtz v11, :cond_8

    .line 209
    const-string v5, "Start Index is less than or equal to 0 - get friends from 0 to page size for Type = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    move/from16 v19, v0

    move-object/from16 v17, p0

    move-object/from16 v20, v13

    move-object/from16 v21, p3

    move-object/from16 v22, p2

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    goto/16 :goto_0

    .line 215
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    if-gt v12, v5, :cond_9

    if-gtz v12, :cond_a

    .line 218
    :cond_9
    const-string v5, "Range (%d) either exceeds Page Size (%d) or is less than 1. Unable to process this request."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_pageSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 219
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v15, p0

    move-object/from16 v17, p2

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-virtual/range {v15 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 227
    :cond_a
    sub-int v5, v11, v24

    const/4 v6, 0x1

    if-lt v5, v6, :cond_b

    .line 229
    const-string v5, "Start Index (%d) higher than currentsize (%d). Unable to process this request."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 230
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID_START_INDEX:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v15, p0

    move-object/from16 v17, p2

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-virtual/range {v15 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 240
    :cond_b
    add-int v5, v11, v12

    add-int/lit8 v6, v24, 0x1

    if-le v5, v6, :cond_c

    .line 242
    const-string v5, "Range (%d) exceeds Available Size (%d). Unable to process this request."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 243
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v15, p0

    move-object/from16 v17, p2

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-virtual/range {v15 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 253
    :cond_c
    if-lez v11, :cond_10

    .line 255
    const-string v13, ""

    .line 257
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    .line 260
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_e

    .line 262
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastUid":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 273
    .restart local v13    # "lastUid":Ljava/lang/String;
    :cond_d
    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_f

    .line 275
    const-string v5, "Refreshing friends by range for Type = %s, Start Index = %d, Range = %d, Last UID = %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v13, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v10, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p2

    .line 276
    invoke-virtual/range {v10 .. v16}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    goto/16 :goto_0

    .line 265
    :cond_e
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v11, v5, :cond_d

    .line 270
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    add-int/lit8 v6, v11, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "lastUid":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .restart local v13    # "lastUid":Ljava/lang/String;
    goto :goto_3

    .line 282
    :cond_f
    const-string v5, "Unable to process refresh request because we are unable to retrieve the last UID before start index %d."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 283
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    sget-object v18, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v15, p0

    move-object/from16 v17, p2

    move-object/from16 v19, v9

    move-object/from16 v20, p3

    invoke-virtual/range {v15 .. v20}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 291
    :cond_10
    const-string v5, "Refreshing friends by range for Type = %s, Range = %d with starting index at 0 and no last UID"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    const/4 v7, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    const/16 v18, 0x0

    const-string v20, ""

    move-object/from16 v17, p0

    move/from16 v19, v12

    move-object/from16 v21, p3

    move-object/from16 v22, p2

    move-object/from16 v23, v16

    invoke-virtual/range {v17 .. v23}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    goto/16 :goto_0

    .line 298
    .end local v11    # "startIndex":I
    .end local v12    # "range":I
    .end local v16    # "basicScope":Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
    .end local v26    # "nextPage":Z
    :cond_11
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;

    if-eqz v5, :cond_16

    move-object/from16 v5, p1

    .line 300
    check-cast v5, Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;

    invoke-virtual {v5}, Lcom/ea/nimble/friends/NimbleFriendsRefreshIdentityInfo;->getTargetedFriendIds()Ljava/util/ArrayList;

    move-result-object v29

    .line 303
    .local v29, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v29, :cond_12

    .line 304
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_13

    .line 307
    :cond_12
    const-string v9, "No user IDs provided for NimbleFriendsRefreshIdentityInfo scope. Unable to process request"

    .line 308
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 313
    :cond_13
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-gt v5, v6, :cond_14

    .line 314
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v24, 0x1

    if-le v5, v6, :cond_15

    .line 316
    :cond_14
    const-string v9, "Number of user IDs provided for NimbleFriendsRefreshIdentityInfo exceeds allowed limits. Unable to process request"

    .line 317
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 324
    :cond_15
    const-string v5, "Refreshing identity info of %d friends of type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v28, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;)V

    goto/16 :goto_0

    .line 329
    .end local v29    # "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_16
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/ea/nimble/friends/NimbleFriendsRefreshImageUrl;

    if-eqz v5, :cond_0

    move-object/from16 v5, p1

    .line 331
    check-cast v5, Lcom/ea/nimble/friends/NimbleFriendsRefreshImageUrl;

    invoke-virtual {v5}, Lcom/ea/nimble/friends/NimbleFriendsRefreshImageUrl;->getTargetedFriendIds()Ljava/util/ArrayList;

    move-result-object v29

    .line 334
    .restart local v29    # "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v29, :cond_17

    .line 335
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_18

    .line 337
    :cond_17
    const-string v9, "No user IDs provided for NimbleFriendsRefreshImageUrl scope. Unable to process request"

    .line 338
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 343
    :cond_18
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v24, 0x1

    if-gt v5, v6, :cond_19

    .line 344
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1a

    .line 346
    :cond_19
    const-string v9, "Number of user IDs provided for NimbleFriendsRefreshImageUrl is more than the page size. Unable to process request"

    .line 347
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    sget-object v8, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 354
    :cond_1a
    const-string v5, "Refreshing image url of %d friends of type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v28, v6, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListImageUrl(Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V

    goto/16 :goto_0
.end method

.method protected abstract refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
.end method

.method protected refreshFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;)V
    .locals 10
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
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 481
    const-string v4, ""

    .line 482
    .local v4, "message":Ljava/lang/String;
    const-string v0, "Preparing to make the call to C&I to get the pid info"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const-string v0, "com.ea.nimble.identity"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string v4, "Unable to refresh friends Identity information because NimbleIdentity is not available"

    .line 487
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 549
    :goto_0
    return-void

    .line 495
    :cond_0
    :try_start_0
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v7

    check-cast v7, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 496
    .local v7, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_1

    .line 498
    const-string v0, "Authenticator (%s) is not logged in or is unavailable"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 500
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v7    # "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    :catch_0
    move-exception v6

    .line 544
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "Authenticator (%s) does not support Identity Refresh for Friends List"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 545
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 506
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    invoke-interface {v7, v0}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;

    invoke-direct {v1, p0, p3, p4, p2}, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->requestIdentityForFriends(Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected abstract refreshFriendsListImageUrl(Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
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
.end method

.method protected sendUpdateNotification()V
    .locals 3

    .prologue
    .line 995
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 996
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "com.ea.nimble.identity"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 998
    const-string v1, "authenticatorId"

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    :goto_0
    const-string v1, "nimble.notification.friends.update"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 1005
    return-void

    .line 1002
    :cond_0
    const-string v1, "authenticatorId"

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_authenticatorId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected declared-synchronized updateFriendsListAvatarInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 16
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p4, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    monitor-enter p0

    :try_start_0
    const-string v6, ""

    .line 581
    .local v6, "message":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .local v15, "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    .line 585
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 587
    :cond_0
    const-string v6, "Current Friends list is empty. Unable to process the PID update"

    .line 588
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 594
    :cond_2
    if-eqz p1, :cond_3

    .line 595
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 597
    :cond_3
    const-string v6, "Updated users array for Avatar info is empty"

    .line 598
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 578
    .end local v6    # "message":Ljava/lang/String;
    .end local v15    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 604
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v15    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_4
    const/4 v9, 0x0

    .local v9, "count":I
    :goto_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/friends/NimbleUser;

    invoke-virtual {v2}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ea/nimble/friends/NimbleUser;

    .line 607
    .local v10, "friendObjectToBeUpdated":Lcom/ea/nimble/friends/NimbleUser;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/friends/NimbleUser;

    invoke-virtual {v2}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v11

    .line 609
    .local v11, "imageUrl":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 611
    invoke-virtual {v10}, Lcom/ea/nimble/friends/NimbleUser;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    .line 612
    .local v13, "oldImageUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 615
    .local v8, "bUpdateUser":Z
    invoke-static {v13}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 616
    invoke-static {v11}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    const/4 v8, 0x1

    .line 637
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    .line 640
    new-instance v12, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v12, v10}, Lcom/ea/nimble/friends/NimbleUser;-><init>(Lcom/ea/nimble/friends/NimbleUser;)V

    .line 642
    .local v12, "newlyCreatedNimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {v12, v11}, Lcom/ea/nimble/friends/NimbleUser;->setImageUrl(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {v12}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    .end local v8    # "bUpdateUser":Z
    .end local v12    # "newlyCreatedNimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    .end local v13    # "oldImageUrl":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 622
    .restart local v8    # "bUpdateUser":Z
    .restart local v13    # "oldImageUrl":Ljava/lang/String;
    :cond_7
    invoke-static {v13}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 623
    invoke-static {v11}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 625
    const/4 v8, 0x1

    goto :goto_2

    .line 629
    :cond_8
    invoke-static {v13}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 630
    invoke-static {v11}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 631
    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 633
    const/4 v8, 0x1

    goto :goto_2

    .line 653
    .end local v8    # "bUpdateUser":Z
    .end local v10    # "friendObjectToBeUpdated":Lcom/ea/nimble/friends/NimbleUser;
    .end local v11    # "imageUrl":Ljava/lang/String;
    .end local v13    # "oldImageUrl":Ljava/lang/String;
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 655
    const-string v6, "No Avatar Info updates were made to the Friends List"

    .line 656
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 664
    :cond_a
    const-string v2, "%d Friends were updated for Avatar Info"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 665
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v6, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->sendUpdateNotification()V

    .line 670
    if-eqz p3, :cond_1

    .line 672
    const-string v2, "Friends list was updated. Invoking the callback"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    new-instance v14, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct {v14}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 674
    .local v14, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 675
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 676
    iput-object v15, v14, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 678
    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_b

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v2, v1, v14}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto/16 :goto_0

    .line 684
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v2, v1, v14}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected declared-synchronized updateFriendsListBasicInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 6
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p4, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "friendsListFromServer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v3, "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 898
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "friends."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 901
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 903
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 905
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/friends/NimbleUser;

    .line 907
    .local v1, "newFriend":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {p0, v1, p2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->updateInternalCache(Lcom/ea/nimble/friends/NimbleUser;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Ljava/util/ArrayList;)V

    .line 901
    .end local v1    # "newFriend":Lcom/ea/nimble/friends/NimbleUser;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 912
    :cond_1
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_4

    .line 914
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    .line 921
    :goto_1
    if-eqz p3, :cond_2

    .line 923
    const-string v4, "Friends list was updated. Invoking the callback"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v2}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 925
    .local v2, "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 926
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 927
    iput-object v3, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 928
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 929
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 930
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 932
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 940
    :goto_2
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_6

    .line 942
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 943
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 953
    .end local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_2
    :goto_3
    const-string v4, "Friends list was upodated, send the update notification"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->sendUpdateNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    .end local v0    # "count":I
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    .line 918
    .restart local v0    # "count":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 893
    .end local v0    # "count":I
    .end local v3    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 937
    .restart local v0    # "count":I
    .restart local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    .restart local v3    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    goto :goto_2

    .line 947
    :cond_6
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 948
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_3

    .line 963
    .end local v0    # "count":I
    .end local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_7
    const-string v4, "Even though the retrieval of Friends list was successful, the retrieved Friend list is empty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    if-eqz p3, :cond_3

    .line 968
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v2}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 969
    .restart local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 970
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 971
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 973
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 974
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 976
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_8

    .line 978
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 979
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_4

    .line 984
    :cond_8
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 985
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method protected declared-synchronized updateFriendsListBasicInfo(Lorg/json/JSONArray;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 6
    .param p1, "friendsJsonArray"    # Lorg/json/JSONArray;
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p4, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v3, "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "friends."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 798
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 801
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->createNimbleUser(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;

    move-result-object v1

    .line 804
    .local v1, "newFriend":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {p0, v1, p2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->updateInternalCache(Lcom/ea/nimble/friends/NimbleUser;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Ljava/util/ArrayList;)V

    .line 796
    .end local v1    # "newFriend":Lcom/ea/nimble/friends/NimbleUser;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_1
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_4

    .line 811
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    .line 818
    :goto_1
    if-eqz p3, :cond_2

    .line 820
    const-string v4, "Friends list was updated. Invoking the callback"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v2}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 822
    .local v2, "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 823
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 824
    iput-object v3, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 825
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 826
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 828
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 830
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 838
    :goto_2
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_6

    .line 840
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 841
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 851
    .end local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_2
    :goto_3
    const-string v4, "Friends list was upodated, send the update notification"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->sendUpdateNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    .end local v0    # "count":I
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    .line 815
    .restart local v0    # "count":I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 788
    .end local v0    # "count":I
    .end local v3    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 835
    .restart local v0    # "count":I
    .restart local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    .restart local v3    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_5
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    goto :goto_2

    .line 845
    :cond_6
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 846
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_3

    .line 860
    .end local v0    # "count":I
    .end local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_7
    const-string v4, "Even though the retrieval of Friends list was successful, the retrieved Friend list is empty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    if-eqz p3, :cond_3

    .line 864
    new-instance v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v2}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 865
    .restart local v2    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 866
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 867
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 868
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getStartIndex()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 869
    invoke-virtual {p4}, Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;->getRange()I

    move-result v4

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 870
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 872
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v4, :cond_8

    .line 874
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 875
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_4

    .line 879
    :cond_8
    iget v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    iput v4, v2, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_totalFriendCount:I

    .line 880
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v4, p4, v2}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method protected declared-synchronized updateFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 11
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p3, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p4, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/UserInfoFromIdentity;",
            ">;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;",
            "Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;",
            ")V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "pidInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/UserInfoFromIdentity;>;"
    monitor-enter p0

    :try_start_0
    const-string v4, ""

    .line 699
    .local v4, "message":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v10, "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    .line 703
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 705
    :cond_0
    const-string v4, "Current Friends list is empty. Unable to process the PID update"

    .line 706
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 707
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 712
    :cond_2
    if-eqz p1, :cond_3

    .line 713
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 715
    :cond_3
    const-string v4, "Updated friends array is empty"

    .line 716
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v4    # "message":Ljava/lang/String;
    .end local v10    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 722
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v10    # "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_4
    const/4 v6, 0x0

    .local v6, "count":I
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 724
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/UserInfoFromIdentity;

    invoke-virtual {v0}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getExternalRefValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ea/nimble/friends/NimbleUser;

    .line 725
    .local v7, "friendObjectToBeUpdated":Lcom/ea/nimble/friends/NimbleUser;
    if-eqz v7, :cond_5

    .line 729
    invoke-virtual {v7}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 731
    new-instance v8, Lcom/ea/nimble/friends/NimbleUser;

    invoke-direct {v8, v7}, Lcom/ea/nimble/friends/NimbleUser;-><init>(Lcom/ea/nimble/friends/NimbleUser;)V

    .line 732
    .local v8, "newlyCreatedNimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/UserInfoFromIdentity;

    invoke-virtual {v0}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getPidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/UserInfoFromIdentity;

    invoke-virtual {v0}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/ea/nimble/friends/NimbleUser;->setPersonaId(Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/UserInfoFromIdentity;

    invoke-virtual {v0}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getExternalRefValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    .end local v8    # "newlyCreatedNimbleUser":Lcom/ea/nimble/friends/NimbleUser;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 743
    .end local v7    # "friendObjectToBeUpdated":Lcom/ea/nimble/friends/NimbleUser;
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 745
    const-string v4, "No Pid Info updates were made to the Friends List"

    .line 746
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 748
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto/16 :goto_0

    .line 754
    :cond_7
    const-string v0, "%d Friends were updated for Identity Scope"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 755
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    invoke-virtual {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->sendUpdateNotification()V

    .line 760
    if-eqz p3, :cond_1

    .line 762
    const-string v0, "Friends list was updated. Invoking the callback"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    new-instance v9, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct {v9}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 764
    .local v9, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 765
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 766
    iput-object v10, v9, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 768
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v0, :cond_8

    .line 770
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v0, p4, v9}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto/16 :goto_0

    .line 774
    :cond_8
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    invoke-interface {p3, v0, p4, v9}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected updateInternalCache(Lcom/ea/nimble/friends/NimbleUser;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "newFriend"    # Lcom/ea/nimble/friends/NimbleUser;
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/friends/NimbleUser;",
            "Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/NimbleUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "updatedFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1038
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1040
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1042
    :cond_0
    const-string v2, "updateInternalCache - Cannot update internal cache because the friend map or the new friend is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    :cond_1
    :goto_0
    return-void

    .line 1047
    :cond_2
    const/4 v1, 0x1

    .line 1048
    .local v1, "isAllFriendsType":Z
    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne p2, v2, :cond_3

    .line 1050
    const/4 v1, 0x0

    .line 1054
    :cond_3
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1060
    if-eqz v1, :cond_5

    .line 1063
    iput-boolean v4, p1, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 1066
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getPlayedCurrentGame()Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    if-ne v2, v3, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1080
    :cond_5
    iput-boolean v5, p1, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 1083
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1096
    :cond_6
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleUser;

    .line 1102
    .local v0, "existingFriend":Lcom/ea/nimble/friends/NimbleUser;
    if-ne v1, v4, :cond_7

    iget-boolean v2, v0, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    if-nez v2, :cond_7

    .line 1106
    iput-boolean v4, p1, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 1107
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    :cond_7
    invoke-virtual {v0, p1}, Lcom/ea/nimble/friends/NimbleUser;->isUserUpdated(Lcom/ea/nimble/friends/NimbleUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    invoke-virtual {v0}, Lcom/ea/nimble/friends/NimbleUser;->getPersonaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPersonaId(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0}, Lcom/ea/nimble/friends/NimbleUser;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setPid(Ljava/lang/String;)V

    .line 1120
    iget-boolean v2, v0, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    iput-boolean v2, p1, Lcom/ea/nimble/friends/NimbleUser;->addedToAllFriends:Z

    .line 1123
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Lcom/ea/nimble/friends/NimbleUser;->setRefreshTimestamp(Ljava/util/Date;)V

    .line 1126
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/ea/nimble/friends/NimbleUser;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
