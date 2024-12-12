.class Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;
.super Ljava/lang/Object;
.source "NimbleOriginFriendsServiceImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->processInivtationListRequest(Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

.field final synthetic val$apiUri:Ljava/lang/String;

.field final synthetic val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

.field final synthetic val$nucleusId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iput-object p2, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    iput-object p3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$nucleusId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$apiUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V
    .locals 4
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "refreshError"    # Lcom/ea/nimble/Error;

    .prologue
    .line 513
    if-eqz p4, :cond_0

    .line 515
    const-string v0, "Failed to refresh AccessToken - cannot process request."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v0, v1, p4}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$300(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;Lcom/ea/nimble/Error;)V

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->this$0:Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$nucleusId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$apiUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl$3;->val$callback:Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;

    invoke-static {v0, v1, p2, v2, v3}, Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;->access$400(Lcom/ea/nimble/friends/NimbleOriginFriendsServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/friends/INimbleOriginFriendsService$NimbleUserSearchCallback;)V

    goto :goto_0
.end method
