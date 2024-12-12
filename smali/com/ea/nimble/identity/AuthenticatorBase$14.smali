.class Lcom/ea/nimble/identity/AuthenticatorBase$14;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 6
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v5, 0x0

    .line 1170
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseJsonResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1171
    .local v1, "result":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lorg/json/JSONObject;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    .end local v1    # "result":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1173
    :catch_0
    move-exception v0

    .line 1175
    .local v0, "error":Lcom/ea/nimble/Error;
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$14;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-interface {v2, v3, v5, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lorg/json/JSONObject;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
