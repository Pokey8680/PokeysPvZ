.class Lcom/inmobi/androidsdk/carb/CARB$a;
.super Ljava/lang/Object;
.source "CARB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/carb/CARB;->a(Ljava/util/ArrayList;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/inmobi/androidsdk/carb/CARB;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/carb/CARB;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 475
    iput-object p1, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iput-object p2, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/16 v2, 0xc8

    const/4 v1, -0x1

    .line 553
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 618
    :goto_0
    return v0

    .line 559
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getCarbPostpoint()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 561
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 563
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getTimeoutInterval()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 564
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 565
    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 566
    const-string v4, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/data/DeviceInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 568
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 569
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 570
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 571
    const-string v4, "content-type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v4, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 579
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 585
    const/4 v4, 0x0

    .line 587
    :try_start_2
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 591
    if-eqz v3, :cond_1

    .line 593
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 601
    :cond_1
    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v0, v2

    .line 603
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
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
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 611
    :catch_1
    move-exception v0

    .line 613
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v2, "Malformed URL"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 618
    goto/16 :goto_0

    .line 594
    :catch_2
    move-exception v4

    .line 595
    :try_start_6
    const-string v5, "[InMobi]-[Network]-4.4.3"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 614
    :catch_3
    move-exception v0

    goto :goto_2

    .line 591
    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_2

    .line 593
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 597
    :cond_2
    :goto_4
    :try_start_8
    throw v0

    .line 594
    :catch_4
    move-exception v3

    .line 595
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

    goto :goto_4

    .line 607
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v0

    goto/16 :goto_0

    .line 591
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/carb/CarbInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    const-string v0, "req_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    invoke-static {p2}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 630
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 631
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 633
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/carb/CarbInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbInfo;->getInmId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 631
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 637
    :cond_0
    const-string v0, "&p_a_apps="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    const-string v0, "&i_till="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 642
    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 644
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 645
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Lcom/inmobi/commons/uid/UID;->getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 648
    const-string v1, "&u-id-map="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 480
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->g(Lcom/inmobi/androidsdk/carb/CARB;)V

    .line 481
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->keag()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;[B)[B

    .line 482
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "Exception retreiving Ad due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->h(Lcom/inmobi/androidsdk/carb/CARB;)V

    .line 550
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->c:Ljava/lang/String;

    iget v2, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/androidsdk/carb/CARB$a;->a(Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 496
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PostBody Before encryption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v2, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v2}, Lcom/inmobi/androidsdk/carb/CARB;->i(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v3}, Lcom/inmobi/androidsdk/carb/CARB;->j(Lcom/inmobi/androidsdk/carb/CARB;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v4, v4, Lcom/inmobi/androidsdk/carb/CARB;->b:[B

    iget-object v5, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v5, v5, Lcom/inmobi/androidsdk/carb/CARB;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v6, v6, Lcom/inmobi/androidsdk/carb/CARB;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/inmobi/androidsdk/carb/CARB;->a(Lcom/inmobi/androidsdk/carb/CARB;Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    if-nez v0, :cond_2

    .line 503
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    const-string v1, "POST message cannot be encrypted"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->b(Lcom/inmobi/androidsdk/carb/CARB;)V

    goto :goto_0

    .line 507
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/carb/CARB$a;->a(Ljava/lang/String;)I

    move-result v0

    .line 508
    const-string v1, "[InMobi]-[CARB]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post Response to CARB server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/16 v1, 0xc8

    if-ne v1, v0, :cond_4

    .line 510
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;->postSuccess()V

    .line 514
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->h(Lcom/inmobi/androidsdk/carb/CARB;)V

    goto/16 :goto_0

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    iget-object v0, v0, Lcom/inmobi/androidsdk/carb/CARB;->f:Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/carb/CARB$CarbCallback;->postFailed()V

    .line 521
    :cond_5
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getRetryCount()I

    move-result v0

    .line 523
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CarbInitializer;->getConfigParams()Lcom/inmobi/androidsdk/carb/CarbConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/carb/CarbConfigParams;->getRetryInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 526
    iget v1, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    if-gt v1, v0, :cond_7

    .line 528
    :try_start_0
    iget v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_1
    const-string v0, "[InMobi]-[CARB]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "POSt to carb failed. Retrying count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    .line 535
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_6

    .line 537
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 539
    :cond_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 540
    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 541
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 542
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 545
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->a:I

    .line 546
    iget-object v0, p0, Lcom/inmobi/androidsdk/carb/CARB$a;->e:Lcom/inmobi/androidsdk/carb/CARB;

    invoke-static {v0}, Lcom/inmobi/androidsdk/carb/CARB;->h(Lcom/inmobi/androidsdk/carb/CARB;)V

    goto/16 :goto_0

    .line 529
    :catch_0
    move-exception v0

    goto :goto_1
.end method
