.class Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;
.super Ljava/lang/Object;
.source "AuthenticatorAnonymous.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 8
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 295
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 303
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "code"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

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

    invoke-virtual {v3, v4}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 314
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 299
    .local v1, "error":Lcom/ea/nimble/Error;
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {v3, v1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 310
    .end local v1    # "error":Lcom/ea/nimble/Error;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    monitor-enter p0

    .line 312
    :try_start_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {v3, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeAuthCodeToToken(Ljava/lang/String;)V

    .line 313
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
