.class public final Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
.super Ljava/lang/Object;
.source "RequestResponseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;
    }
.end annotation


# static fields
.field static a:Ljava/lang/Thread;

.field static b:Landroid/os/Handler;

.field static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

.field public static mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;


# instance fields
.field d:[B

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/net/HttpURLConnection;

.field private k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

.field private final m:I

.field private final n:I

.field private o:[B

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    .line 50
    new-instance v0, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    .line 51
    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b:Landroid/os/Handler;

    .line 55
    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    sput-object v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    .line 60
    const/16 v0, 0x8

    iput v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->m:I

    .line 61
    const/16 v0, 0x10

    iput v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->n:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/AdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x190

    const/16 v7, 0xc8

    .line 393
    .line 394
    const-string v0, "[InMobi]-[Network]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Status Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    const-string v3, "im-id"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    const-string v1, "[InMobi]-[Network]-4.4.3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Im Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    const-string v4, "im-ec"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_0

    .line 401
    const-string v4, "[InMobi]-[Network]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sandbox error Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    if-ne v0, v7, :cond_3

    .line 405
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 411
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    :goto_1
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 465
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    throw v0

    .line 413
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v4, "[InMobi]-[Network]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    .line 421
    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    invoke-static {v0, v4, v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->DeAe([B[B[B)[B

    move-result-object v4

    .line 423
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v0

    .line 431
    :goto_2
    :try_start_4
    const-string v0, "[InMobi]-[Network]-4.4.3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decrypted Ad Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    if-eqz v2, :cond_2

    .line 445
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/Response;

    invoke-direct {v0, v3, v2}, Lcom/inmobi/androidsdk/impl/net/Response;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 465
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 427
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 441
    :cond_2
    new-instance v0, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v2, "Some error in response."

    const/16 v4, 0xc8

    const/4 v5, -0x1

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 447
    :cond_3
    const/16 v1, 0xcc

    if-ne v0, v1, :cond_4

    .line 448
    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v4, "Server returned No fill"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0x64

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    .line 464
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    .line 452
    :cond_4
    if-ne v0, v8, :cond_5

    .line 453
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v4, "Invalid App Id.Please check the app Id in the adrequest is valid and in active state"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0x190

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    .line 459
    :cond_5
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v4, "Server Error"

    invoke-static {v1, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v1, Lcom/inmobi/androidsdk/impl/AdException;

    const-string v4, "Server did not return 200."

    const/16 v5, 0xc8

    invoke-direct {v1, v4, v5, v3, v0}, Lcom/inmobi/androidsdk/impl/AdException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/androidsdk/impl/AdException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Lcom/inmobi/androidsdk/impl/net/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->b()V

    .line 283
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->keag()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    .line 284
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getExponent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    .line 285
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getModulus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    .line 286
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/PkInitilaizer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/PkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Exception retreiving Ad due to key problem"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->o:[B

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    iget-object v4, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    const-string v2, "sm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v0, "&sn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v1, "[InMobi]-[Network]-4.4.3"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    .line 345
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 346
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-static {v0, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V

    .line 347
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    if-eqz p3, :cond_0

    .line 139
    invoke-interface {p3, p1, p2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;->notifyResult(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(ILjava/lang/Object;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 368
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v1, "[InMobi]-[Network]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception closing resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v2, 0x0

    .line 357
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    .line 363
    return-void

    .line 361
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/inmobi/androidsdk/impl/UserInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 378
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v0

    .line 379
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 380
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 381
    const-string v0, "user-agent"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 384
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 385
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 386
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 387
    const-string v0, "content-type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 323
    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    .line 324
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->d:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 327
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    .line 328
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->p:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 6

    .prologue
    .line 145
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$b;->start()V

    .line 200
    return-void
.end method

.method public asyncRequestSecuredAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 6

    .prologue
    .line 205
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Lcom/inmobi/androidsdk/impl/UserInfo;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$c;->start()V

    .line 278
    return-void
.end method

.method public deinit()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->saveClickEvents()V

    .line 104
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mDBWriterQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V

    .line 106
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->clear()V

    .line 111
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "Request Response Manager deinit failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doCancel()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->i:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;)V

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$a;->start()V

    .line 131
    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->getLoggedClickEvents()Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->mNetworkQueue:Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    .line 81
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->isSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "Request Response Manager init failed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    .locals 3

    .prologue
    .line 477
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$d;-><init>(Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    .line 633
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 634
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "Exception ping "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public processClickHttpClient(Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 646
    .line 647
    const/4 v1, 0x0

    .line 649
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing click in http client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getPingTimeOut()I

    move-result v4

    .line 655
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 658
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 659
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 660
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 661
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 662
    const-string v1, "user-agent"

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getSavedUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    const-string v1, "mk-carrier"

    const-string v4, "117.97.87.6"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v1, "x-real-ip"

    const-string v4, "117.97.87.6"

    invoke-virtual {v0, v1, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    const/16 v4, 0x190

    if-ge v1, v4, :cond_5

    move v1, v3

    .line 676
    :goto_0
    if-ne v3, v1, :cond_2

    .line 677
    :try_start_2
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 692
    :goto_1
    if-eqz v0, :cond_4

    .line 693
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    .line 695
    :cond_1
    :goto_2
    return v0

    .line 681
    :cond_2
    :try_start_3
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 685
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v6

    .line 686
    :goto_3
    :try_start_4
    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 689
    const-string v3, "[InMobi]-[Network]-4.4.3"

    const-string v4, "Click in background exception"

    invoke-static {v3, v4, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 692
    if-eqz v2, :cond_1

    .line 693
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 692
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    .line 693
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 692
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 685
    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public processClickUrlInWebview(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 704
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing click in webview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    .line 707
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getImai()Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/IMAIConfigParams;->getPingTimeOut()I

    move-result v1

    .line 709
    const/4 v0, 0x0

    .line 710
    invoke-static {}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getQAMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 712
    const-string v2, "mk-carrier"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v2, "x-real-ip"

    const-string v3, "117.97.87.6"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_0
    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-virtual {v2, p1, v0}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->loadInWebview(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 717
    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 719
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->a:Ljava/lang/Thread;

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 727
    :try_start_3
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v6, v0, :cond_1

    .line 728
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->k:Lcom/inmobi/androidsdk/impl/net/WebviewLoader;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->deinit(I)V

    .line 739
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    .line 743
    :goto_2
    return v0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    :try_start_4
    const-string v3, "[InMobi]-[Network]-4.4.3"

    const-string v4, "Network thread wait failure"

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 740
    :catch_1
    move-exception v0

    .line 741
    const-string v1, "[InMobi]-[Network]-4.4.3"

    const-string v2, "ping in webview exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_2

    .line 733
    :cond_1
    :try_start_6
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 736
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/WebviewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
