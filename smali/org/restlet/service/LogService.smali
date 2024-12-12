.class public Lorg/restlet/service/LogService;
.super Lorg/restlet/service/Service;
.source "LogService.java"


# instance fields
.field private volatile debugging:Z

.field private volatile identityCheck:Z

.field private volatile logPropertiesRef:Lorg/restlet/data/Reference;

.field private volatile loggableTemplate:Lorg/restlet/routing/Template;

.field private volatile loggerName:Ljava/lang/String;

.field private volatile responseLogFormat:Ljava/lang/String;

.field protected volatile responseLogTemplate:Lorg/restlet/routing/Template;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/service/LogService;-><init>(Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 128
    iput-object v0, p0, Lorg/restlet/service/LogService;->loggableTemplate:Lorg/restlet/routing/Template;

    .line 129
    iput-object v0, p0, Lorg/restlet/service/LogService;->loggerName:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lorg/restlet/service/LogService;->responseLogFormat:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lorg/restlet/service/LogService;->logPropertiesRef:Lorg/restlet/data/Reference;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/service/LogService;->identityCheck:Z

    .line 133
    return-void
.end method


# virtual methods
.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 137
    new-instance v0, Lorg/restlet/engine/log/LogFilter;

    invoke-direct {v0, p1, p0}, Lorg/restlet/engine/log/LogFilter;-><init>(Lorg/restlet/Context;Lorg/restlet/service/LogService;)V

    return-object v0
.end method

.method protected getDefaultResponseLogMessage(Lorg/restlet/Response;I)Ljava/lang/String;
    .locals 18
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "duration"    # I

    .prologue
    .line 151
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v8

    .line 154
    .local v8, "request":Lorg/restlet/Request;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/service/LogService;->isDebugging()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 265
    :goto_0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 157
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    .local v4, "currentTime":J
    const-string v14, "%tF"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    const-string v14, "%tT"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v8}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ClientInfo;->getUpstreamAddress()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "clientAddress":Ljava/lang/String;
    if-nez v3, :cond_1

    const-string v3, "-"

    .end local v3    # "clientAddress":Ljava/lang/String;
    :cond_1
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/service/LogService;->isIdentityCheck()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 174
    new-instance v6, Lorg/restlet/engine/log/IdentClient;

    invoke-virtual {v8}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ClientInfo;->getUpstreamAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v15

    invoke-virtual {v15}, Lorg/restlet/data/ClientInfo;->getPort()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Lorg/restlet/engine/log/IdentClient;-><init>(Ljava/lang/String;II)V

    .line 178
    .local v6, "ic":Lorg/restlet/engine/log/IdentClient;
    invoke-virtual {v6}, Lorg/restlet/engine/log/IdentClient;->getUserIdentifier()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_8

    const-string v14, "-"

    :goto_1
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .end local v6    # "ic":Lorg/restlet/engine/log/IdentClient;
    :goto_2
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "serverAddress":Ljava/lang/String;
    if-nez v12, :cond_2

    const-string v12, "-"

    .end local v12    # "serverAddress":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getServerInfo()Lorg/restlet/data/ServerInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ServerInfo;->getPort()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 196
    .local v13, "serverport":Ljava/lang/Integer;
    if-nez v13, :cond_b

    const-string v14, "-"

    :goto_3
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v8}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v14

    if-nez v14, :cond_c

    const-string v7, "-"

    .line 202
    .local v7, "methodName":Ljava/lang/String;
    :goto_4
    if-nez v7, :cond_3

    const-string v7, "-"

    .end local v7    # "methodName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v8}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v14

    if-nez v14, :cond_d

    const-string v9, "-"

    .line 208
    .local v9, "resourcePath":Ljava/lang/String;
    :goto_5
    if-nez v9, :cond_4

    const-string v9, "-"

    .end local v9    # "resourcePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v8}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v14

    if-nez v14, :cond_e

    const-string v10, "-"

    .line 214
    .local v10, "resourceQuery":Ljava/lang/String;
    :goto_6
    if-nez v10, :cond_5

    const-string v10, "-"

    .end local v10    # "resourceQuery":Ljava/lang/String;
    :cond_5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v14

    if-nez v14, :cond_f

    const-string v14, "-"

    :goto_7
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v8}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 229
    :cond_6
    const/16 v14, 0x30

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :goto_8
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v8}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v14

    if-nez v14, :cond_12

    .line 239
    const/16 v14, 0x30

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    :goto_9
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v8}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v14

    if-nez v14, :cond_14

    const-string v14, "-"

    :goto_a
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v8}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "agentName":Ljava/lang/String;
    if-nez v2, :cond_7

    const-string v2, "-"

    .end local v2    # "agentName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/16 v14, 0x9

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v8}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v14

    if-nez v14, :cond_15

    const-string v14, "-"

    :goto_b
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 178
    .end local v13    # "serverport":Ljava/lang/Integer;
    .restart local v6    # "ic":Lorg/restlet/engine/log/IdentClient;
    :cond_8
    invoke-virtual {v6}, Lorg/restlet/engine/log/IdentClient;->getUserIdentifier()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 180
    .end local v6    # "ic":Lorg/restlet/engine/log/IdentClient;
    :cond_9
    invoke-virtual {v8}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v8}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 182
    invoke-virtual {v8}, Lorg/restlet/Request;->getChallengeResponse()Lorg/restlet/data/ChallengeResponse;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 184
    :cond_a
    const/16 v14, 0x2d

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 196
    .restart local v13    # "serverport":Ljava/lang/Integer;
    :cond_b
    invoke-virtual {v13}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 200
    :cond_c
    invoke-virtual {v8}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 206
    :cond_d
    invoke-virtual {v8}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 212
    :cond_e
    invoke-virtual {v8}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 218
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Status;->getCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_7

    .line 231
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_11

    const-string v14, "-"

    :goto_c
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 241
    :cond_12
    invoke-virtual {v8}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_13

    const-string v14, "-"

    :goto_d
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_13
    invoke-virtual {v8}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    .line 251
    :cond_14
    invoke-virtual {v8}, Lorg/restlet/Request;->getHostRef()Lorg/restlet/data/Reference;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 261
    :cond_15
    invoke-virtual {v8}, Lorg/restlet/Request;->getReferrerRef()Lorg/restlet/data/Reference;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/data/Reference;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b
.end method

.method public getLogFormat()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getResponseLogFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogPropertiesRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/restlet/service/LogService;->logPropertiesRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getLoggableTemplate()Lorg/restlet/routing/Template;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/restlet/service/LogService;->loggableTemplate:Lorg/restlet/routing/Template;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/restlet/service/LogService;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseLogFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/restlet/service/LogService;->responseLogFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseLogMessage(Lorg/restlet/Response;I)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "duration"    # I

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 338
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/restlet/service/LogService;->responseLogTemplate:Lorg/restlet/routing/Template;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lorg/restlet/service/LogService;->responseLogTemplate:Lorg/restlet/routing/Template;

    invoke-virtual {p1}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/restlet/routing/Template;->format(Lorg/restlet/Request;Lorg/restlet/Response;)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/restlet/service/LogService;->getDefaultResponseLogMessage(Lorg/restlet/Response;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected isDebugging()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lorg/restlet/service/LogService;->debugging:Z

    return v0
.end method

.method public isIdentityCheck()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lorg/restlet/service/LogService;->identityCheck:Z

    return v0
.end method

.method public isLoggable(Lorg/restlet/Request;)Z
    .locals 3
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLoggableTemplate()Lorg/restlet/routing/Template;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLoggableTemplate()Lorg/restlet/routing/Template;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getTargetRef()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/routing/Template;->match(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setDebugging(Z)V
    .locals 0
    .param p1, "debugging"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/restlet/service/LogService;->debugging:Z

    .line 389
    return-void
.end method

.method public setIdentityCheck(Z)V
    .locals 0
    .param p1, "identityCheck"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lorg/restlet/service/LogService;->identityCheck:Z

    .line 399
    return-void
.end method

.method public setLogFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseLogFormat"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lorg/restlet/service/LogService;->setResponseLogFormat(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setLogPropertiesRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "logPropertiesUri"    # Ljava/lang/String;

    .prologue
    .line 467
    new-instance v0, Lorg/restlet/data/Reference;

    invoke-direct {v0, p1}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/restlet/service/LogService;->setLogPropertiesRef(Lorg/restlet/data/Reference;)V

    .line 468
    return-void
.end method

.method public setLogPropertiesRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "logPropertiesRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 457
    iput-object p1, p0, Lorg/restlet/service/LogService;->logPropertiesRef:Lorg/restlet/data/Reference;

    .line 458
    return-void
.end method

.method public setLoggableTemplate(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggableTemplateRef"    # Ljava/lang/String;

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    new-instance v0, Lorg/restlet/routing/Template;

    invoke-direct {v0, p1}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/restlet/service/LogService;->loggableTemplate:Lorg/restlet/routing/Template;

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/service/LogService;->loggableTemplate:Lorg/restlet/routing/Template;

    goto :goto_0
.end method

.method public setLoggableTemplate(Lorg/restlet/routing/Template;)V
    .locals 0
    .param p1, "loggableTemplate"    # Lorg/restlet/routing/Template;

    .prologue
    .line 437
    iput-object p1, p0, Lorg/restlet/service/LogService;->loggableTemplate:Lorg/restlet/routing/Template;

    .line 438
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lorg/restlet/service/LogService;->loggerName:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setResponseLogFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseLogFormat"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lorg/restlet/service/LogService;->responseLogFormat:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/restlet/service/Service;->start()V

    .line 490
    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLogFormat()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/restlet/service/LogService;->responseLogTemplate:Lorg/restlet/routing/Template;

    .line 493
    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLogPropertiesRef()Lorg/restlet/data/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    new-instance v1, Lorg/restlet/resource/ClientResource;

    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getContext()Lorg/restlet/Context;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLogPropertiesRef()Lorg/restlet/data/Reference;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/restlet/resource/ClientResource;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Reference;)V

    invoke-virtual {v1}, Lorg/restlet/resource/ClientResource;->get()Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 497
    .local v0, "logProperties":Lorg/restlet/representation/Representation;
    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/LogManager;->readConfiguration(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v0    # "logProperties":Lorg/restlet/representation/Representation;
    :cond_0
    monitor-exit p0

    return-void

    .line 490
    :cond_1
    :try_start_1
    new-instance v1, Lorg/restlet/routing/Template;

    invoke-virtual {p0}, Lorg/restlet/service/LogService;->getLogFormat()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
