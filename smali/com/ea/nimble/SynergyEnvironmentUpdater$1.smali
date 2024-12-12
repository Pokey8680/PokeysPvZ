.class Lcom/ea/nimble/SynergyEnvironmentUpdater$1;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 11
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v10, 0x0

    .line 163
    const-string v6, "GETDIRECTION FINISHED"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 167
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 168
    .local v1, "error":Ljava/lang/Exception;
    if-nez v1, :cond_5

    .line 171
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 171
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ea/nimble/EnvironmentDataContainer;->setMostRecentDirectorResponseTimestamp(Ljava/lang/Long;)V

    .line 175
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    .line 176
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Lcom/ea/nimble/EnvironmentDataContainer;->setGetDirectionResponseDictionary(Ljava/util/Map;)V

    .line 181
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    .line 182
    invoke-virtual {v6}, Lcom/ea/nimble/EnvironmentDataContainer;->getGetDirectionResponseDictionary()Ljava/util/Map;

    move-result-object v6

    const-string v7, "serverData"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 183
    .local v4, "serverDataPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v7}, Lcom/ea/nimble/EnvironmentDataContainer;->setServerUrls(Ljava/util/Map;)V

    .line 185
    if-eqz v4, :cond_0

    .line 187
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 189
    .local v3, "keyValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v7

    const-string v8, "key"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "value"

    .line 190
    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 189
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    .end local v3    # "keyValuePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrls()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 196
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v7, Lcom/ea/nimble/Error;

    sget-object v8, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v9, "No Synergy server URLs available."

    invoke-direct {v7, v8, v9}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    .line 264
    .end local v4    # "serverDataPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :goto_1
    return-void

    .line 202
    .restart local v4    # "serverDataPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 203
    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 207
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    iget-object v7, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_3
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->loadEADeviceId()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "easpDeviceId":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 216
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    :cond_4
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto :goto_1

    .line 228
    .end local v0    # "easpDeviceId":Ljava/lang/String;
    .end local v4    # "serverDataPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_5
    instance-of v6, v1, Lcom/ea/nimble/SynergyServerError;

    if-eqz v6, :cond_6

    move-object v5, v1

    .line 230
    check-cast v5, Lcom/ea/nimble/SynergyServerError;

    .line 231
    .local v5, "synergyError":Lcom/ea/nimble/SynergyServerError;
    const v6, -0x11172

    invoke-virtual {v5, v6}, Lcom/ea/nimble/SynergyServerError;->isError(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v7, Lcom/ea/nimble/Error;

    sget-object v8, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    const-string v9, "Synergy ServerUnavailable signal received."

    invoke-direct {v7, v8, v9, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto :goto_1

    .line 241
    .end local v5    # "synergyError":Lcom/ea/nimble/SynergyServerError;
    :cond_6
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z

    move-result v2

    .line 242
    .local v2, "isTimeout":Z
    if-nez v2, :cond_7

    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$700(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 244
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$708(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    .line 246
    const-string v6, "GetDirection, call failed. Making retry attempt number %d."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .line 247
    invoke-static {v8}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$700(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    .line 246
    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$800(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    goto/16 :goto_1

    .line 253
    :cond_7
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$702(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J

    .line 254
    if-eqz v2, :cond_8

    .line 256
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    new-instance v7, Lcom/ea/nimble/Error;

    sget-object v8, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    const-string v9, "Synergy /getDirectionByPackage request timed out."

    invoke-direct {v7, v8, v9, v1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 261
    :cond_8
    iget-object v6, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentUpdater;

    invoke-static {v6, v1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method
