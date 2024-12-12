.class Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;
.super Ljava/lang/Object;
.source "NimbleFriendsListFacebook.java"

# interfaces
.implements Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->refreshFriendsListBasicInfo(IILjava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

.field final synthetic val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

.field final synthetic val$range:I

.field final synthetic val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

.field final synthetic val$startIndex:I

.field final synthetic val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListFacebook;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;IILcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iput p3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$startIndex:I

    iput p4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$range:I

    iput-object p5, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iput-object p6, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/IFacebook;Lorg/json/JSONArray;Lcom/ea/nimble/Error;)V
    .locals 7
    .param p1, "facebook"    # Lcom/ea/nimble/IFacebook;
    .param p2, "friendsList"    # Lorg/json/JSONArray;
    .param p3, "facebookError"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 88
    const-string v0, ""

    .line 89
    .local v0, "fbMessage":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 91
    const-string v2, "Error in retrieving friends list from Facebook. Error :%s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/ea/nimble/Error;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    if-eqz v2, :cond_0

    .line 95
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 96
    .local v1, "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    iput-boolean v5, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 97
    iput-object p3, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 98
    iput-object v6, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 99
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$startIndex:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 100
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$range:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 101
    iput-boolean v5, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 103
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne v2, v3, :cond_1

    .line 105
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iget-object v3, v3, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    .line 154
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iget-object v3, v3, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0

    .line 119
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 121
    :cond_3
    const-string v0, "No friends retrieved from Facebook even though the operation was successful"

    .line 122
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    if-eqz v2, :cond_5

    .line 127
    new-instance v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;

    invoke-direct {v1}, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;-><init>()V

    .line 128
    .restart local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    iput-boolean v4, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_success:Z

    .line 129
    iput-object v6, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_error:Lcom/ea/nimble/Error;

    .line 130
    iput-object v6, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_userList:Ljava/util/ArrayList;

    .line 131
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$startIndex:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_startIndex:I

    .line 132
    iget v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$range:I

    iput v2, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_size:I

    .line 133
    iput-boolean v5, v1, Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;->m_friendListEndInRefresh:Z

    .line 135
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;->CURRENT_GAME_FRIENDS:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    if-ne v2, v3, :cond_4

    .line 137
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iget-object v3, v3, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimblePlayedFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0

    .line 142
    :cond_4
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iget-object v3, v3, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->m_nimbleFriendsList:Lcom/ea/nimble/friends/NimbleFriendsList;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-interface {v2, v3, v4, v1}, Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;->onCallback(Lcom/ea/nimble/friends/NimbleFriendsList;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshResult;)V

    goto :goto_0

    .line 151
    .end local v1    # "result":Lcom/ea/nimble/friends/NimbleFriendsRangeRefreshResult;
    :cond_5
    const-string v2, "Successfully retrieved friends for specified scope from Facebook. Proceeding with NimbleFriendList update"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListFacebook$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;->updateFriendsListBasicInfo(Lorg/json/JSONArray;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V

    goto :goto_0
.end method
