.class Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;
.super Ljava/lang/Object;
.source "NimbleOriginFriendsServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processSearchUserRequest(Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

.field final synthetic val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

.field final synthetic val$criteriaType:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

.field final synthetic val$searchCriteria:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$searchCriteria:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$criteriaType:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 6
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "refreshError"    # Lcom/ea/nimble/Error;

    .prologue
    .line 551
    if-eqz p4, :cond_0

    .line 553
    const-string v0, "Failed to refresh AccessToken - cannot process request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v0, v1, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$300(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V

    .line 561
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$searchCriteria:Ljava/lang/String;

    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$criteriaType:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;

    iget-object v5, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$4;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$500(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$UserSearchCriteria;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method
