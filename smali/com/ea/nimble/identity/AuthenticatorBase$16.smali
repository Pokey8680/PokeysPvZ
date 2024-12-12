.class Lcom/ea/nimble/identity/AuthenticatorBase$16;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V
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
    .line 1363
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 18
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 1371
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1380
    .local v10, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "personas"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 1381
    .local v8, "rawMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v8, :cond_0

    .line 1383
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v11, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to parse persona information from server response data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 1384
    .local v2, "error":Lcom/ea/nimble/Error;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v11, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1387
    .end local v2    # "error":Lcom/ea/nimble/Error;
    :cond_0
    const-string v11, "persona"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1388
    .local v9, "rawPersonas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v9, :cond_1

    .line 1390
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v11, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to parse persona information from server response data "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 1391
    .restart local v2    # "error":Lcom/ea/nimble/Error;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v11, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1394
    .end local v2    # "error":Lcom/ea/nimble/Error;
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    .local v7, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v11}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-long v14, v14

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 1396
    .local v3, "expiryTime":Ljava/util/Date;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1398
    .local v6, "personaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-direct {v5, v6, v3}, Lcom/ea/nimble/identity/NimbleIdentityPersona;-><init>(Ljava/util/Map;Ljava/util/Date;)V

    .line 1399
    .local v5, "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1373
    .end local v3    # "expiryTime":Ljava/util/Date;
    .end local v5    # "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    .end local v6    # "personaData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    .end local v8    # "rawMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "rawPersonas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v10    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 1375
    .restart local v2    # "error":Lcom/ea/nimble/Error;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v11, v2}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1414
    .end local v2    # "error":Lcom/ea/nimble/Error;
    :goto_1
    return-void

    .line 1404
    .restart local v3    # "expiryTime":Ljava/util/Date;
    .restart local v7    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    .restart local v8    # "rawMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "rawPersonas":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    iget-object v11, v11, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v12, "Update personas successfully with new data"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    monitor-enter p0

    .line 1407
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v11, v7}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1802(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1408
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1410
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V

    .line 1411
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v4, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "authenticatorId"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/identity/AuthenticatorBase$16;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-virtual {v12}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    const-string v11, "nimble.notification.identity.authenticator.persona.info.update"

    invoke-static {v11, v4}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 1408
    .end local v4    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11
.end method
