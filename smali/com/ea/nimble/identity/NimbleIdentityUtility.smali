.class Lcom/ea/nimble/identity/NimbleIdentityUtility;
.super Ljava/lang/Object;
.source "NimbleIdentityUtility.java"


# static fields
.field public static final NIMBLE_IDENTITY_DEVICE_UNIQUE_IDENTIFIER:Ljava/lang/String; = "nimble.identity.device.unique.identifier"

.field static counter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/ea/nimble/identity/NimbleIdentityUtility;->counter:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTimeString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-DD HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 117
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "localDate"    # Ljava/util/Date;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-DD HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 105
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    .locals 2
    .param p0, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/Map",
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
    .line 48
    invoke-static {p0}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseJsonResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    .local v0, "json":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static parseJsonResponse(Lcom/ea/nimble/NetworkConnectionHandle;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/Error;
        }
    .end annotation

    .prologue
    .line 158
    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v2

    .line 159
    .local v2, "exception":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 161
    instance-of v6, v2, Lcom/ea/nimble/Error;

    if-eqz v6, :cond_0

    .line 163
    check-cast v2, Lcom/ea/nimble/Error;

    .end local v2    # "exception":Ljava/lang/Exception;
    throw v2

    .line 165
    .restart local v2    # "exception":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    const-string v8, "Unknown error while parsing network response"

    invoke-direct {v6, v7, v8, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 168
    :cond_1
    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v4

    .line 170
    .local v4, "responseData":Ljava/io/InputStream;
    if-nez v4, :cond_2

    .line 172
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v8, "Cannot understand server response, expecting JSON string but get invalid data"

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    throw v6

    .line 177
    :cond_2
    :try_start_0
    invoke-static {v4}, Lcom/ea/nimble/Utility;->readStringFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 187
    .local v5, "responseString":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .local v3, "response":Lorg/json/JSONObject;
    const-string v6, "error"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 195
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 197
    invoke-static {v3}, Lcom/ea/nimble/Utility;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/identity/NimbleIdentityError;->createWithData(Ljava/util/Map;)Lcom/ea/nimble/identity/NimbleIdentityError;

    move-result-object v6

    throw v6

    .line 179
    .end local v1    # "errorString":Ljava/lang/String;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v5    # "responseString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v8, "Error reading server response"

    invoke-direct {v6, v7, v8, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "responseString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    const-string v8, "Invalid JSON received from server"

    invoke-direct {v6, v7, v8, v0}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 202
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "errorString":Ljava/lang/String;
    .restart local v3    # "response":Lorg/json/JSONObject;
    :cond_3
    return-object v3
.end method

.method public static parseRedirectURLParameters(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/HashMap;
    .locals 13
    .param p0, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/NetworkConnectionHandle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    .line 62
    invoke-interface {p0}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/IHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v4, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 71
    .local v3, "paramString":Ljava/lang/String;
    const-string v7, "\\?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ne v7, v12, :cond_0

    .line 73
    const-string v7, "\\?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v3, v7, v8

    .line 78
    :cond_0
    const-string v7, "&"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "keyValuePairs":[Ljava/lang/String;
    array-length v9, v2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v2, v7

    .line 85
    .local v1, "keyValuePair":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ne v10, v12, :cond_1

    .line 87
    const-string v10, "="

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v0, v10, v8

    .line 88
    .local v0, "key":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v6, v10, v11

    .line 89
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v0    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "keyValuePair":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static toJSONString(Ljava/util/HashMap;)Ljava/io/ByteArrayOutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 127
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 129
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 130
    .local v2, "gsonObject":Lcom/google/gson/Gson;
    new-instance v7, Lcom/ea/nimble/identity/NimbleIdentityUtility$1;

    invoke-direct {v7}, Lcom/ea/nimble/identity/NimbleIdentityUtility$1;-><init>()V

    .line 131
    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityUtility$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 135
    .local v6, "typeOfHashMap":Ljava/lang/reflect/Type;
    :try_start_0
    invoke-virtual {v2, p0, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "jsonString":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 137
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v7, v0

    invoke-direct {v5, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v5

    .line 153
    .end local v0    # "buffer":[B
    .end local v2    # "gsonObject":Lcom/google/gson/Gson;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "typeOfHashMap":Ljava/lang/reflect/Type;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v4

    .line 141
    .restart local v2    # "gsonObject":Lcom/google/gson/Gson;
    .restart local v6    # "typeOfHashMap":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v4, 0x0

    .line 144
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x0

    .line 149
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "jsonString":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 141
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
