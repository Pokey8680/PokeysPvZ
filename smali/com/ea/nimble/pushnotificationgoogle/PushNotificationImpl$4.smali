.class Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$4;->this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 81
    const-string v4, "identity changed - PN system attempting to register"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 85
    const-string v4, "com.ea.nimble.identity"

    invoke-static {v4}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v4

    if-nez v4, :cond_1

    .line 87
    const-string v4, "identity changed - ID comp not found. Early out."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "authenticatorId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "authType":Ljava/lang/String;
    const-string v4, "com.ea.nimble.identity"

    invoke-static {v4}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 93
    .local v2, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    invoke-interface {v2, v1}, Lcom/ea/nimble/identity/INimbleIdentity;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 95
    .local v0, "authObj":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    if-nez v4, :cond_4

    .line 97
    :cond_2
    if-nez v0, :cond_3

    .line 99
    const-string v4, "identity changed - authObj was null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "identity chagned - authObj.getPidInfo null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "pid":Ljava/lang/String;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_5

    .line 112
    const-string v4, "identity changed - PN system will store pid"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {v3}, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->callSynergyStorePushTokenByPid(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    const-string v4, "identity changed - PN system will revoke pid"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {v3}, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->callSynergyRevokePushTokenByPid(Ljava/lang/String;)V

    goto :goto_0
.end method
