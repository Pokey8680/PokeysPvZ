.class Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;
.super Ljava/lang/Object;
.source "NimbleFriendsListImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleFriendsListImpl;->refreshFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

.field final synthetic val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

.field final synthetic val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

.field final synthetic val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListImpl;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lorg/json/JSONObject;Lcom/ea/nimble/Error;)V
    .locals 7
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "response"    # Lorg/json/JSONObject;
    .param p3, "errorFromNexus"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v2, 0x0

    .line 511
    if-eqz p3, :cond_0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server error when retrieving Pid Info. Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/ea/nimble/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {p3}, Lcom/ea/nimble/Error;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 539
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v0, "No errors when retrieving Pid Info response from C&I server"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    invoke-static {p2}, Lcom/ea/nimble/friends/NimbleFriendsUtility;->parseJSONObjectToArrayOfUserInfo(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    .line 524
    .local v6, "userInfoListFromCI":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/UserInfoFromIdentity;>;"
    if-eqz v6, :cond_1

    .line 525
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 527
    :cond_1
    const-string v4, "Response for Pid Info request is empty. No Pids were updated for this request. It is probably because the selected friends do not have any Pids associated with them"

    .line 528
    .local v4, "message":Ljava/lang/String;
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v4, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 535
    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    const-string v0, "Successfully retrieved non-empty updated pid info from Identity server."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListImpl$1;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->updateFriendsListIdentityInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V

    goto :goto_0
.end method
