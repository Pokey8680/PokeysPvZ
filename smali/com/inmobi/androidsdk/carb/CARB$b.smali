.class Lcom/inmobi/androidsdk/carb/CARB$b;
.super Ljava/lang/Object;
.source "CARB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/carb/CARB;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/carb/CARB;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/carb/CARB;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xc8

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 188
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 355
    :goto_0
    return v0

    .line 194
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getCarbEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 196
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 198
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getTimeoutInterval()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 199
    long-to-int v8, v6

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    long-to-int v6, v6

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 201
    const-string v6, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 203
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 204
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 205
    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 206
    const-string v6, "content-type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v6, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 212
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 220
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    if-eqz v3, :cond_1

    .line 226
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 235
    :cond_1
    :goto_1
    :try_start_5
    const-string v3, "[InMobi]-[CARB]-4.4.3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get CARB list status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 238
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "UTF-8"

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 244
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 346
    :catch_0
    move-exception v0

    .line 348
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v2, "Malformed URL"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 355
    goto/16 :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    :try_start_6
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed URL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :catch_2
    move-exception v0

    goto :goto_3

    .line 227
    :catch_3
    move-exception v6

    .line 228
    const-string v7, "[InMobi]-[Network]-4.4.3"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception closing resource: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 351
    :catch_4
    move-exception v0

    .line 352
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v2, "Invalid JSON response"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 224
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_2

    .line 226
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4

    .line 230
    :cond_2
    :goto_5
    :try_start_8
    throw v0

    .line 227
    :catch_5
    move-exception v3

    .line 228
    const-string v4, "[InMobi]-[Network]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception closing resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 246
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string v3, "[InMobi]-[CARB]-4.4.3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    .line 252
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    .line 253
    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->c(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v3

    iget-object v6, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v6}, Lcom/inmobi/androidsdk/carb/CARB;->d(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcom/inmobi/commons/internal/InternalSDKUtil;->DeAe([B[B[B)[B

    move-result-object v3

    .line 255
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v4, v0

    .line 265
    :goto_6
    if-eqz v4, :cond_4

    .line 275
    :try_start_a
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get list after decryption: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    const-string v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 279
    if-eqz v3, :cond_9

    .line 281
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 282
    const-string v3, "req_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    const-string v3, "count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 286
    const-string v3, "p_apps"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 290
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 293
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->e(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    move v0, v1

    .line 297
    goto/16 :goto_0

    .line 257
    :catch_6
    move-exception v0

    .line 259
    const-string v3, "[InMobi]-[CARB]-4.4.3"

    const-string v6, "Exception in carb "

    invoke-static {v3, v6, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 271
    :cond_4
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v2, "Unable to decrypt response or response not encrypted"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    move v0, v1

    .line 273
    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 300
    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 302
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 303
    const-string v5, ""

    .line 304
    const-string v5, ""
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    .line 310
    :try_start_b
    const-string v5, "bid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    const-string v7, "inm_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v3

    .line 317
    if-eqz v3, :cond_6

    :try_start_c
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 300
    :cond_6
    :goto_8
    add-int/lit8 v3, v0, 0x1

    move v5, v0

    move v0, v3

    goto :goto_7

    .line 312
    :catch_7
    move-exception v3

    .line 314
    const-string v3, "[InMobi]-[CARB]-4.4.3"

    const-string v5, "BID or INM missing"

    invoke-static {v3, v5}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 321
    :cond_7
    new-instance v7, Lcom/inmobi/androidsdk/carb/CarbInfo;

    invoke-direct {v7}, Lcom/inmobi/androidsdk/carb/CarbInfo;-><init>()V

    .line 322
    invoke-virtual {v7, v5}, Lcom/inmobi/androidsdk/carb/CarbInfo;->setBid(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v7, v3}, Lcom/inmobi/androidsdk/carb/CarbInfo;->setInmId(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3, v5}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 328
    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->f(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 332
    :cond_8
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->e(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 335
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->f(Lcom/inmobi/androidsdk/carb/CARB;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v3, v4, v5}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    move v0, v2

    .line 338
    goto/16 :goto_0

    .line 342
    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    move-result v0

    goto/16 :goto_0

    .line 224
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_4
.end method

.method private a()V
    .locals 7

    .prologue
    .line 154
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;)V

    .line 155
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->keag()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;[B)[B

    .line 156
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_0
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "Exception retreiving Ad due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unencrypted postbody :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v2, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->c(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->d(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v4, v4, Lcom/inmobi/androidsdk/carb/CARB;->a:[B

    iget-object v5, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v5, v5, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v6, v6, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/carb/CARB$b;->a(Ljava/lang/String;)I

    move-result v0

    .line 179
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$b;->a:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 361
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 363
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->fillCarbInfo()V

    .line 365
    const-string v2, "mk-siteid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pr-SAND-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4.4.3"

    invoke-static {v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "20140730"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "&mk-version="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 374
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v0}, Lcom/inmobi/commons/uid/UID;->getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 378
    const-string v3, "&u-id-map="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    const-string v2, "&u-appbid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getAppBid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v2, "&u-appver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getAppVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v2, "&h-user-agent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    const-string v2, "&d-localization="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getLocalization()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    const-string v2, "&d-nettype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 416
    :goto_0
    if-eqz v0, :cond_0

    .line 417
    const-string v2, "&c-ap-bssid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    iget-wide v2, v0, Lcom/inmobi/commons/thinICE/wifi/WifiInfo;->bssid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :catch_0
    move-exception v2

    .line 411
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "No wifi permissions set, unable to send wifi data"

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/inmobi/androidsdk/carb/CARB$b;->a()V

    .line 150
    return-void
.end method
