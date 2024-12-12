.class Lcom/ea/nimble/identity/AuthenticatorBase$15;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V
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
    .line 1216
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 14
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1224
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1232
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v8}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1233
    .local v1, "expiryTime":Ljava/util/Date;
    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-direct {v3, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;-><init>(Ljava/util/Map;Ljava/util/Date;)V

    .line 1234
    .local v3, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1236
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v6, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to parse valid pid information from server response data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 1237
    .local v0, "error":Lcom/ea/nimble/Error;
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1280
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v1    # "expiryTime":Ljava/util/Date;
    .end local v3    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .end local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 1226
    :catch_0
    move-exception v0

    .line 1228
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 1241
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .restart local v1    # "expiryTime":Ljava/util/Date;
    .restart local v3    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .restart local v4    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1243
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v6, v6, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v7, "Update pid info succesfully, but nothing change."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->setExpiryTime(Ljava/util/Date;)V

    .line 1245
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6, v13}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 1249
    :cond_1
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v6, v6, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v7, "Update pid info successfully with new data."

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v6, v6, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-nez v6, :cond_3

    .line 1253
    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-direct {v5}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;-><init>()V

    .line 1259
    .local v5, "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :goto_1
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setPid(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getDob()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1262
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getDob()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDateOfBirth(Ljava/lang/String;)V

    .line 1265
    :cond_2
    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    monitor-enter v7

    .line 1267
    :try_start_1
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6, v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1602(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/NimbleIdentityPidInfo;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 1268
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iput-object v5, v6, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    .line 1269
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v6, v13}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1274
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1275
    .local v2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string v6, "authenticatorId"

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v6, "pidMapId"

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const-string v6, "nimble.notification.identity.authenticator.user.info.update"

    invoke-static {v6, v2}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    .line 1279
    const-string v6, "nimble.notification.identity.authenticator.pid.info.update"

    invoke-static {v6, v2}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1257
    .end local v2    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v5    # "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :cond_3
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorBase$15;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v6, v6, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    move-result-object v5

    .restart local v5    # "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    goto :goto_1

    .line 1269
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method
