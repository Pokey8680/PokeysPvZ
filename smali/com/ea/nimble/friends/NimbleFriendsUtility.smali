.class Lcom/ea/nimble/friends/NimbleFriendsUtility;
.super Ljava/lang/Object;
.source "NimbleFriendsUtility.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cutJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "maxLength"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static isNimbleComponentAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "bRet":Z
    invoke-static {p0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 97
    :cond_0
    return v0
.end method

.method public static parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/HashMap;
    .locals 9
    .param p0, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 106
    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    .line 109
    .local v3, "responseData":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 112
    .local v2, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 114
    :cond_0
    new-instance v6, Lcom/ea/nimble/friends/NimbleFriendsError;

    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v7

    .line 115
    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/friends/NimbleFriendsError;-><init>(ILjava/lang/String;)V

    throw v6

    .line 126
    :cond_1
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v7, "\\A"

    invoke-virtual {v6, v7}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    .line 127
    .local v4, "s":Ljava/util/Scanner;
    const-string v0, ""

    .line 128
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {v4}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_2
    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 135
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 137
    new-instance v6, Lcom/google/gson/GsonBuilder;

    invoke-direct {v6}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 138
    .local v1, "gsonObject":Lcom/google/gson/Gson;
    new-instance v6, Lcom/ea/nimble/friends/NimbleFriendsUtility$1;

    invoke-direct {v6}, Lcom/ea/nimble/friends/NimbleFriendsUtility$1;-><init>()V

    .line 139
    invoke-virtual {v6}, Lcom/ea/nimble/friends/NimbleFriendsUtility$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 141
    .local v5, "typeOfHashMap":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 146
    .end local v1    # "gsonObject":Lcom/google/gson/Gson;
    .end local v5    # "typeOfHashMap":Ljava/lang/reflect/Type;
    .restart local v2    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-object v2
.end method

.method protected static parseJSONObjectToArrayOfUserInfo(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/friends/UserInfoFromIdentity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 42
    if-eqz p0, :cond_0

    const-string v5, "pidInfos"

    .line 43
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    .line 74
    :cond_0
    return-object v2

    .line 48
    :cond_1
    const-string v5, "pidInfos"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "pidInfo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 49
    .local v4, "userInfoList":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/friends/UserInfoFromIdentity;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 59
    :try_start_0
    new-instance v3, Lcom/ea/nimble/friends/UserInfoFromIdentity;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/ea/nimble/friends/UserInfoFromIdentity;-><init>(Lorg/json/JSONObject;)V

    .line 60
    .local v3, "userInfo":Lcom/ea/nimble/friends/UserInfoFromIdentity;
    invoke-virtual {v3}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getPidId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 61
    invoke-virtual {v3}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getPidId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_2

    .line 62
    invoke-virtual {v3}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getExternalRefValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v3}, Lcom/ea/nimble/friends/UserInfoFromIdentity;->getExternalRefValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eq v5, v6, :cond_2

    .line 65
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v3    # "userInfo":Lcom/ea/nimble/friends/UserInfoFromIdentity;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_1
.end method
