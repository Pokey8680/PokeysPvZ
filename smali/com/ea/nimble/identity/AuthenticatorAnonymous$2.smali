.class Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;
.super Ljava/lang/Object;
.source "AuthenticatorAnonymous.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getUpidToken()V
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
    .line 237
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 242
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 243
    .local v1, "exception":Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 246
    instance-of v3, v1, Lcom/ea/nimble/Error;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 248
    check-cast v0, Lcom/ea/nimble/Error;

    .line 254
    .local v0, "error":Lcom/ea/nimble/Error;
    :goto_0
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-virtual {v3, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 256
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :cond_0
    const/4 v2, 0x0

    .line 259
    .local v2, "upidToken":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 262
    :goto_1
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    new-instance v4, Lcom/ea/nimble/Error;

    sget-object v5, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v6, "Cannot read UPID token from server response"

    invoke-direct {v4, v5, v6}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 274
    :goto_2
    return-void

    .line 252
    .end local v2    # "upidToken":Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    const-string v4, "Connection error"

    invoke-direct {v0, v3, v4, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v0    # "error":Lcom/ea/nimble/Error;
    goto :goto_0

    .line 268
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .restart local v2    # "upidToken":Ljava/lang/String;
    :cond_2
    monitor-enter p0

    .line 270
    :try_start_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {v3, v2}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$102(Lcom/ea/nimble/identity/AuthenticatorAnonymous;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {v3}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$200(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    .line 272
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;->this$0:Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-static {v3}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->access$300(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    .line 273
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 261
    :catch_0
    move-exception v3

    goto :goto_1
.end method
