.class Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;
.super Ljava/lang/Object;
.source "NimbleFriendsListOrigin.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->sendGosRefreshFriendsRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

.field final synthetic val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

.field final synthetic val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

.field final synthetic val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 9
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v8, 0x0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0, p1}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$100(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v7

    .line 181
    .local v7, "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/friends/NimbleFriendsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v3

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 222
    .end local v7    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :goto_0
    return-void

    .line 190
    .restart local v7    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    .line 192
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 194
    const-string v0, "GOS FriendsList request is successful, but there are no friends"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->updateFriendsListBasicInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v7    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catch_0
    move-exception v6

    .line 216
    .local v6, "e":Lcom/ea/nimble/Error;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing response from GOS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/ea/nimble/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "message":Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 201
    .end local v4    # "message":Ljava/lang/String;
    .end local v6    # "e":Lcom/ea/nimble/Error;
    .restart local v7    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_2
    :try_start_1
    const-string v4, "Error in response for GOS getFriendsList request"

    .line 202
    .restart local v4    # "message":Ljava/lang/String;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithBasicScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 210
    .end local v4    # "message":Ljava/lang/String;
    :cond_3
    const-string v0, "Successful in retrieving friends list from GOS"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$2;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->updateFriendsListBasicInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshBasicInfo;)V
    :try_end_1
    .catch Lcom/ea/nimble/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
