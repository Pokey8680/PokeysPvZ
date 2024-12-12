.class public Lcom/ea/nimble/friends/NimbleFriendsListFacebook;
.super Lcom/ea/nimble/friends/NimbleFriendsListImpl;
.source "NimbleFriendsListFacebook.java"


# static fields
.field private static final FACEBOOK_COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.facebook"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;-><init>()V

    .line 29
    const-string v0, "NimbleFriendsListFacebook"

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->LOG_SOURCE_TITLE:Ljava/lang/String;

    .line 32
    const-string v0, "facebook"

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_authenticatorId:Ljava/lang/String;

    .line 34
    const-string v0, "Constructed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_pageSize:I

    .line 40
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsList;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/friends/NimbleFriendsList;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    .line 41
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsList;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/friends/NimbleFriendsList;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    .line 42
    return-void
.end method


# virtual methods
.method protected createNimbleUser(Lorg/json/JSONObject;)Lcom/ea/nimble/friends/NimbleUser;
    .locals 1
    .param p1, "friend"    # Lorg/json/JSONObject;

    .prologue
    .line 176
    new-instance v0, Lcom/ea/nimble/friends/NimbleFacebookUser;

    invoke-direct {v0, p1}, Lcom/ea/nimble/friends/NimbleFacebookUser;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public bridge synthetic getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->getLogSourceTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 13
    .param p1, "startIndex"    # I
    .param p2, "range"    # I
    .param p3, "lastUid"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;
    .param p5, "gameCallback"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;
    .param p6, "scope"    # Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    .prologue
    .line 52
    const-string v5, ""

    .line 57
    .local v5, "message":Ljava/lang/String;
    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->ALL_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 59
    const-string v5, "Facebook no longer supports getting friends with ALL_FRIENDS flag"

    .line 61
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v5, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 156
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v1, "com.ea.nimble.facebook"

    invoke-virtual {p0, v1}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->isNimbleComponentAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.ea.nimble.facebook"

    .line 73
    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IFacebook;

    invoke-interface {v1}, Lcom/ea/nimble/IFacebook;->hasOpenSession()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    :cond_1
    const-string v5, "Unable to refresh friends from Facebook because NimbleFacebook is either unavailable or the session is not open"

    .line 76
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v5, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    sget-object v4, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FACEBOOK_USER_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "com.ea.nimble.facebook"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IFacebook;

    new-instance v6, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;

    move-object v7, p0

    move-object/from16 v8, p5

    move v9, p1

    move v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;-><init>(Lcom/ea/nimble/friends/NimbleFriendsListFacebook;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;IILcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    invoke-interface {v1, p1, p2, v6}, Lcom/ea/nimble/IFacebook;->retrieveFriends(IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V

    goto :goto_0
.end method

.method protected refreshFriendsListImageUrl(Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    .locals 6
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
    .line 166
    .local p1, "userIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "Facebook Friends Service does not support ImageUri refresh because Facebook friends already have Image URI information"

    .line 168
    .local v4, "message":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 170
    return-void
.end method
