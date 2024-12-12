.class Lcom/ea/nimble/identity/AuthenticatorBase$10;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->requestAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

.field final synthetic val$scope:Ljava/lang/String;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 9
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 626
    if-nez p2, :cond_1

    .line 628
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Ready to request server auth code for serverId %s and scope %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    const/4 v6, 0x0

    .line 632
    .local v6, "url":Ljava/net/URL;
    :try_start_0
    const-string v0, "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 633
    .local v8, "urlString":Ljava/lang/String;
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "%s&scope=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 637
    :cond_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    move-object v6, v7

    .line 641
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlString":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;

    invoke-direct {v2, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$10$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase$10;)V

    invoke-interface {v0, v6, v1, v2}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 678
    .end local v6    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Fail to get server authentication oauth code because of error %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$serverId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase$10;->val$scope:Ljava/lang/String;

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_1

    .line 639
    .restart local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    goto :goto_0
.end method
