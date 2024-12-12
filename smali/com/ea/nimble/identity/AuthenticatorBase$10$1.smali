.class Lcom/ea/nimble/identity/AuthenticatorBase$10$1;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase$10;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/identity/AuthenticatorBase$10;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 13
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 649
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 658
    .local v12, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "code"

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 660
    .local v8, "authCode":Ljava/lang/String;
    invoke-static {v8}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v5, Lcom/ea/nimble/Error;

    sget-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v1, "Fail to parse oAuth code from server response data %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v12, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 663
    .local v5, "error":Lcom/ea/nimble/Error;
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Request for server auth code failed for error %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v1, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v3, v3, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v4, v4, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    .line 670
    .end local v5    # "error":Lcom/ea/nimble/Error;
    .end local v8    # "authCode":Ljava/lang/String;
    .end local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v5

    .line 653
    .restart local v5    # "error":Lcom/ea/nimble/Error;
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Request for server auth code failed for error %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v1, v1, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v3, v3, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v4, v4, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 668
    .end local v5    # "error":Lcom/ea/nimble/Error;
    .restart local v8    # "authCode":Ljava/lang/String;
    .restart local v12    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Request for server auth code succeed with auth code: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v8, v3, v4

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v6, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v7, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v9, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;->this$1:Lcom/ea/nimble/identity/AuthenticatorBase$10;

    iget-object v10, v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    move-object v11, v2

    invoke-interface/range {v6 .. v11}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
