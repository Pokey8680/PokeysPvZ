.class Lcom/ea/nimble/identity/AuthenticatorFacebook$2;
.super Ljava/lang/Object;
.source "AuthenticatorFacebook.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorFacebook;->exchangeFacebookAccessTokenForAuthCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorFacebook;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorFacebook;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 8
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 243
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 251
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "code"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    new-instance v4, Lcom/ea/nimble/Error;

    sget-object v5, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read login OAuth code data from server response data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 259
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    .line 247
    .local v1, "error":Lcom/ea/nimble/Error;
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-virtual {v3, v1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 258
    .end local v1    # "error":Lcom/ea/nimble/Error;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-virtual {v3, v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->exchangeAuthCodeToToken(Ljava/lang/String;)V

    goto :goto_0
.end method
