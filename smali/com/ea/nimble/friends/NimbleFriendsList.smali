.class public Lcom/ea/nimble/friends/NimbleFriendsList;
.super Ljava/lang/Object;
.source "NimbleFriendsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    }
.end annotation


# instance fields
.field private m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

.field private m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 0
    .param p1, "friendsListImpl"    # Lcom/ea/nimble/friends/NimbleFriendsListImpl;
    .param p2, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    .line 27
    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    .line 28
    return-void
.end method


# virtual methods
.method public getFriendProfile(Ljava/lang/String;)Lcom/ea/nimble/friends/NimbleUser;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleUser;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFriends()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne v0, v1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_playedFriendsList:Ljava/util/ArrayList;

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_friendsList:Ljava/util/ArrayList;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRefreshPageSize()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    invoke-virtual {v0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->getPageSize()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTotalFriendCount()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalPlayedFriends:I

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget v0, v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->m_totalFriends:I

    goto :goto_0
.end method

.method getType()Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    return-object v0
.end method

.method public declared-synchronized refreshFriendsList(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;)V
    .locals 4
    .param p1, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;
    .param p2, "callback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    if-eqz v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_friendsListImpl:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsList;->m_type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v2, p1, p2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsList(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    if-eqz p2, :cond_0

    .line 83
    :try_start_1
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_PROVIDER_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v3, "Specified Friends provider is not available. Failed to refresh Friends list."

    invoke-direct {v0, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 85
    .local v0, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;-><init>()V

    .line 86
    .local v1, "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    iput-object v0, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 87
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_success:Z

    .line 88
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 90
    const/4 v2, 0x0

    invoke-interface {p2, v2, p1, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
