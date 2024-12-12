.class Lcom/ea/nimble/identity/NimbleIdentityImpl$3;
.super Ljava/lang/Object;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 4
    .param p1, "mainAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 157
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-static {v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->access$200(Lcom/ea/nimble/identity/NimbleIdentityImpl;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    move-object v1, v0

    .line 159
    check-cast v1, Lcom/ea/nimble/identity/AuthenticatorBase;

    .line 160
    .local v1, "authenticatorBase":Lcom/ea/nimble/identity/AuthenticatorBase;
    if-eq v1, p1, :cond_0

    .line 162
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    .line 165
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .end local v1    # "authenticatorBase":Lcom/ea/nimble/identity/AuthenticatorBase;
    :cond_1
    return-void
.end method
