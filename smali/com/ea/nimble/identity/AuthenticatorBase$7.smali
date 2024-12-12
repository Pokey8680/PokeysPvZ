.class Lcom/ea/nimble/identity/AuthenticatorBase$7;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 4
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz v0, :cond_1

    .line 344
    if-nez p2, :cond_0

    .line 346
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-static {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$600(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 358
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->intValue()I

    move-result v2

    const-string v3, "Fail to refresh user info from pid info"

    invoke-direct {v1, v2, v3, p2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$7;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Received null callback in refreshUserInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
