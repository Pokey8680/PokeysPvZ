.class Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;
.super Ljava/lang/Object;
.source "NimbleOriginFriendsServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->sendGetFriendInvitationListRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

.field final synthetic val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v6, 0x0

    .line 731
    :try_start_0
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    invoke-static {v3, p1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$800(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 734
    .local v2, "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    if-nez v2, :cond_0

    .line 736
    const-string v1, "Error in response from GOS server. Unable to get list of invitations"

    .line 737
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-static {v3, v4, v5, v1}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$900(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    .line 775
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :goto_0
    return-void

    .line 742
    .restart local v2    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 744
    const-string v1, "Server request was successful, but we did not find any pending invitations"

    .line 745
    .restart local v1    # "message":Ljava/lang/String;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v3, v4, v2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$1000(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 759
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Lcom/ea/nimble/Error;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing response from GOS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .restart local v1    # "message":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v3, v4, v0}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$300(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 753
    .end local v0    # "e":Lcom/ea/nimble/Error;
    .end local v1    # "message":Ljava/lang/String;
    .restart local v2    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :cond_1
    :try_start_1
    const-string v3, "Successful in retrieving invitation list from GOS"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v3, v4, v2}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$1000(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/ea/nimble/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 768
    .end local v2    # "nimbleUserArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/NimbleUser;>;"
    :catch_1
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$7;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    sget-object v5, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$900(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/friends/NimbleFriendsError$Code;Ljava/lang/String;)V

    goto :goto_0
.end method
