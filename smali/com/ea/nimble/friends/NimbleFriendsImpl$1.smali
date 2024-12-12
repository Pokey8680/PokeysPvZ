.class Lcom/ea/nimble/friends/NimbleFriendsImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleFriendsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/friends/NimbleFriendsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/friends/NimbleFriendsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/friends/NimbleFriendsImpl;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "nimble.notification.identity.authentication.update"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "authenticatorId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "authenticatorId":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const-string v4, "com.ea.nimble.identity"

    invoke-static {v4}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 43
    .local v2, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    invoke-interface {v2, v1}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 44
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_2

    .line 50
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 53
    const-string v4, "facebook"

    if-ne v4, v1, :cond_1

    .line 55
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    new-instance v5, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;

    invoke-direct {v5}, Lcom/ea/nimble/friends/NimbleFriendsListFacebook;-><init>()V

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .end local v1    # "authenticatorId":Ljava/lang/String;
    .end local v2    # "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .restart local v1    # "authenticatorId":Ljava/lang/String;
    .restart local v2    # "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    :cond_1
    const-string v4, "origin"

    if-ne v4, v1, :cond_0

    .line 61
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    new-instance v5, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;

    invoke-direct {v5}, Lcom/ea/nimble/friends/NimbleFriendsListOrigin;-><init>()V

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    .line 70
    .local v3, "nimbleFriendsListImpl":Lcom/ea/nimble/friends/NimbleFriendsListImpl;
    invoke-virtual {v3}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->clear()V

    .line 71
    iget-object v4, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;->this$0:Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-static {v4}, Lcom/ea/nimble/friends/NimbleFriendsImpl;->access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
