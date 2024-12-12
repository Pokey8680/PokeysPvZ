.class Lcom/ea/nimble/identity/AuthenticatorBase$18;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->onTokenResponse(Lcom/ea/nimble/NetworkConnectionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$18;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 1
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$18;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v0, p2}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 1661
    return-void
.end method
