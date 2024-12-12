.class Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;
.super Ljava/lang/Object;
.source "NimbleFriendsListOrigin.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->refreshFriendsListImageUrl(Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

.field final synthetic val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

.field final synthetic val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

.field final synthetic val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

.field final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iput-object p5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$userIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 7
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "refreshError"    # Lcom/ea/nimble/Error;

    .prologue
    .line 289
    if-eqz p4, :cond_0

    .line 291
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v0, v1, v2, p4, v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$userIds:Ljava/util/List;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v6, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$3;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$300(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V

    goto :goto_0
.end method
