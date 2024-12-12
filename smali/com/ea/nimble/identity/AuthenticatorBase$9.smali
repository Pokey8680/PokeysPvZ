.class Lcom/ea/nimble/identity/AuthenticatorBase$9;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
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
    .line 498
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object p2, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 5
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v4, 0x0

    .line 502
    if-nez p2, :cond_3

    .line 504
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Ready to refresh persona info"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    monitor-enter p0

    .line 508
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1100(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1200(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    .line 517
    monitor-exit p0

    .line 532
    :cond_2
    :goto_0
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_4

    .line 524
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;

    move-result-object v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v0, v2, v3, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Persona refresh failed early because of error %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$9;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-interface {v0, v1, p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
