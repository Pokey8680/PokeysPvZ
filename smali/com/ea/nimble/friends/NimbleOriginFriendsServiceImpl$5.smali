.class Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;
.super Ljava/lang/Object;
.source "NimbleOriginFriendsServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendFriendInvitationRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

.field final synthetic val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v6, 0x0

    .line 597
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v2

    .line 598
    .local v2, "responseCode":I
    const/16 v3, 0xcc

    if-ne v2, v3, :cond_0

    .line 600
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    invoke-static {v3, v4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$600(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;)V

    .line 618
    .end local v2    # "responseCode":I
    :goto_0
    return-void

    .line 606
    .restart local v2    # "responseCode":I
    :cond_0
    const-string v1, "Server responded with an error for send friend invitation request"

    .line 607
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SERVER_RETURNED_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-static {v3, v4, v5, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$700(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "responseCode":I
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$5;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$700(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleFriendInvitationCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method
