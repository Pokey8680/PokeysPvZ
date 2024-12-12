.class Lcom/ea/nimble/identity/NimbleIdentityImpl$5;
.super Ljava/lang/Object;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

.field final synthetic val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

.field final synthetic val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field final synthetic val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 914
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iput-object p3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v5, 0x0

    .line 918
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 919
    .local v1, "exception":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request for account migration failed for error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ea/nimble/identity/AuthenticatorBase;->logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 924
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v2

    .line 925
    .local v2, "persistence":Lcom/ea/nimble/Persistence;
    const-string v3, "nimble.notification.identity.migraiton"

    invoke-virtual {v2, v3, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 926
    invoke-virtual {v2}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 928
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 929
    .local v0, "error":Lcom/ea/nimble/Error;
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-interface {v3, v5, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 938
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v2    # "persistence":Lcom/ea/nimble/Persistence;
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$currentAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iget-object v5, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$newAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;->val$callback:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    invoke-virtual {v3, v4, v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0
.end method
