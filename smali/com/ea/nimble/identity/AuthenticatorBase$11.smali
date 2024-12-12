.class Lcom/ea/nimble/identity/AuthenticatorBase$11;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 5
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 730
    if-nez p2, :cond_0

    .line 732
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$11;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
