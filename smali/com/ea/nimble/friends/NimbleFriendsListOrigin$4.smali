.class Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;
.super Ljava/lang/Object;
.source "NimbleFriendsListOrigin.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->sendGosRefreshAvatarsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
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


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 10
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v9, 0x0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0, p1}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$400(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v8

    .line 338
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v3

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    .line 375
    .end local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :goto_0
    return-void

    .line 347
    .restart local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_1
    const-string v4, "Error in response for GOS getAvatarInfo request"

    .line 348
    .local v4, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    sget-object v3, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    .end local v4    # "message":Ljava/lang/String;
    .end local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v0}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-static {v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->access$200(Lcom/ea/nimble/friends/NimbleFriendsListOrigin;)Lcom/ea/nimble/friends/NimbleFriendsError;

    move-result-object v3

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0

    .line 356
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->updateFriendsListAvatarInfo(Ljava/util/ArrayList;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 369
    .end local v8    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    .restart local v6    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v0, "GoS Avatar Info XML parsng raised an exception. Details: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    new-instance v7, Lcom/ea/nimble/friends/NimbleFriendsError;

    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "Failed to parse response XML for Avatar Info"

    invoke-direct {v7, v0, v1}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 372
    .local v7, "error":Lcom/ea/nimble/friends/NimbleFriendsError;
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->this$0:Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$scope:Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$gameCallback:Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleFriendsListOrigin$4;->val$type:Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;->invokeCallbackWithScopeError(Lcom/ea/nimble/friends/NimbleFriendsRefreshScope;Lcom/ea/nimble/friends/NimbleFriendsRefreshCallback;Lcom/ea/nimble/Error;Lcom/ea/nimble/friends/NimbleFriendsList$FriendsListType;)V

    goto :goto_0
.end method
