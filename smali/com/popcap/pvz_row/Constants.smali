.class public Lcom/popcap/pvz_row/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_HIDE"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.intent.action.DOWNLOAD_LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.intent.action.DOWNLOAD_OPEN"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.intent.action.DOWNLOAD_WAKEUP"

.field public static final ACTIVE_THREAD_WATCHDOG:J = 0x1388L

.field public static final ASSET_MAIN_DOWNLOAD_SIZE_BYTES:J = 0x338c0e2L

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android.LVLDM"

.field public static final EXP_PATH:Ljava/lang/String;

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final LOCAL_LOGVV:Z = false

.field public static final LOGV:Z = false

.field public static final LOGVV:Z = false

.field public static final LOGX:Z = true

.field private static final MARKET_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjTGDGuHrbEYAUekS3h+rX9LB4ym0VQgEE2CCpp1csX9Icppm/i7scrXH33rQUP7RWm2U7KyHIvQWiyIa82L+z9/vB87zTuL3w3w4cPUA3Zi+CivtCYkyPN42XIQC49dgrsqMR7q3oc5dM+OaAL7fplA3UygPrACbVjiWApB+O/Lqa/g0oXePwAaPEltdrhavbAhDSG5C7yxO7516QzBGKDHEfRpIw2vXO/vkxAskThalf34L+NbL01nabAMbqNdsks0kDIvbkZco7bAk3/7FJO50+nQEYpNqdaxhEIEOAEXb5gzxIgQaLM22KjM0f+zPIuoNyiqyW3J6LA4uBBBAfwIDAQAB"

.field public static final MAX_DOWNLOADS:I = 0x3e8

.field public static final MAX_REDIRECTS:I = 0x5

.field public static final MAX_RETRIES:I = 0x5

.field public static final MAX_RETRY_AFTER:I = 0x15180

.field public static final MIN_ARTIFICIAL_ERROR_STATUS:I = 0x1e8

.field public static final MIN_PROGRESS_STEP:I = 0x1000

.field public static final MIN_PROGRESS_TIME:J = 0x3e8L

.field public static final MIN_RETRY_AFTER:I = 0x1e

.field public static final RETRY_FIRST_DELAY:I = 0x1e

.field public static final SALT:[B

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANNOT_RESUME:I = 0x1e9

.field public static final STATUS_DEVICE_NOT_FOUND_ERROR:I = 0x1f3

.field public static final STATUS_FILE_ALREADY_EXISTS_ERROR:I = 0x1e8

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_INSUFFICIENT_SPACE_ERROR:I = 0x1f2

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_TOO_MANY_REDIRECTS:I = 0x1f1

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final TAG:Ljava/lang/String; = "LVLDL"

.field public static final WATCHDOG_WAKE_TIMER:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/popcap/pvz_row/Constants;->SALT:[B

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "obb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/popcap/pvz_row/Constants;->EXP_PATH:Ljava/lang/String;

    return-void

    .line 8
    nop

    :array_0
    .array-data 1
        0x13t
        0x30t
        -0x2ft
        -0x10t
        0x36t
        0x62t
        -0xdt
        -0x55t
        0x29t
        0x6at
        -0x59t
        -0x60t
        0x4ft
        0x1ct
        -0x10t
        -0x12t
        -0x21t
        0x19t
        -0xbt
        0x13t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarketKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcom/popcap/pvz_row/ObbActivity;->getActivityPackageName()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "PackageName":Ljava/lang/String;
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjTGDGuHrbEYAUekS3h+rX9LB4ym0VQgEE2CCpp1csX9Icppm/i7scrXH33rQUP7RWm2U7KyHIvQWiyIa82L+z9/vB87zTuL3w3w4cPUA3Zi+CivtCYkyPN42XIQC49dgrsqMR7q3oc5dM+OaAL7fplA3UygPrACbVjiWApB+O/Lqa/g0oXePwAaPEltdrhavbAhDSG5C7yxO7516QzBGKDHEfRpIw2vXO/vkxAskThalf34L+NbL01nabAMbqNdsks0kDIvbkZco7bAk3/7FJO50+nQEYpNqdaxhEIEOAEXb5gzxIgQaLM22KjM0f+zPIuoNyiqyW3J6LA4uBBBAfwIDAQAB"

    return-object v1
.end method
