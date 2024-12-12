.class Lcom/ea/nimble/identity/AuthenticatorFacebook$1;
.super Ljava/lang/Object;
.source "AuthenticatorFacebook.java"

# interfaces
.implements Lcom/ea/nimble/IFacebook$FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorFacebook;->loginFacebook(Lcom/ea/nimble/IFacebook;Ljava/util/List;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
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
    .line 187
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/IFacebook;ZLjava/lang/Exception;)V
    .locals 3
    .param p1, "facebook"    # Lcom/ea/nimble/IFacebook;
    .param p2, "success"    # Z
    .param p3, "error"    # Ljava/lang/Exception;

    .prologue
    .line 192
    if-eqz p2, :cond_1

    .line 194
    invoke-interface {p1}, Lcom/ea/nimble/IFacebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    const-string v2, "Facebook SDK gives login success without a valid Facebook token"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 197
    .local v0, "nimbleError":Lcom/ea/nimble/Error;
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-virtual {v1, v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 222
    .end local v0    # "nimbleError":Lcom/ea/nimble/Error;
    :goto_0
    return-void

    .line 200
    :cond_0
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-interface {p1}, Lcom/ea/nimble/IFacebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->access$000(Lcom/ea/nimble/identity/AuthenticatorFacebook;Ljava/lang/String;)V

    .line 203
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 208
    :cond_1
    if-eqz p3, :cond_2

    instance-of v1, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_3

    .line 210
    :cond_2
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v2, "Facebook login is cancelled by user"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 220
    .restart local v0    # "nimbleError":Lcom/ea/nimble/Error;
    :goto_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-virtual {v1, v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 212
    .end local v0    # "nimbleError":Lcom/ea/nimble/Error;
    :cond_3
    instance-of v1, p3, Lcom/ea/nimble/Error;

    if-eqz v1, :cond_4

    move-object v0, p3

    .line 214
    check-cast v0, Lcom/ea/nimble/Error;

    .restart local v0    # "nimbleError":Lcom/ea/nimble/Error;
    goto :goto_1

    .line 218
    .end local v0    # "nimbleError":Lcom/ea/nimble/Error;
    :cond_4
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    const-string v2, "Unknown error type from Facebook"

    invoke-direct {v0, v1, v2, p3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v0    # "nimbleError":Lcom/ea/nimble/Error;
    goto :goto_1
.end method
