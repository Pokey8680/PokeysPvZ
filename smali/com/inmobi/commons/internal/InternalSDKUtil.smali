.class public Lcom/inmobi/commons/internal/InternalSDKUtil;
.super Ljava/lang/Object;
.source "InternalSDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/InternalSDKUtil$d;,
        Lcom/inmobi/commons/internal/InternalSDKUtil$a;,
        Lcom/inmobi/commons/internal/InternalSDKUtil$c;,
        Lcom/inmobi/commons/internal/InternalSDKUtil$b;
    }
.end annotation


# static fields
.field public static final BASE_LOG_TAG:Ljava/lang/String; = "[InMobi]"

.field public static final CLASS_PLATFORM_ID:Ljava/lang/String; = "com.inmobi.commons.uid.PlatformId"

.field public static final CLASS_PLAYSERVICES:Ljava/lang/String; = "com.google.android.gms.common.GooglePlayServicesUtil"

.field public static final IM_PREF:Ljava/lang/String; = "impref"

.field public static final INMOBI_SDK_RELEASE_DATE:Ljava/lang/String; = "20140730"

.field public static final INMOBI_SDK_RELEASE_VERSION:Ljava/lang/String; = "4.4.3"

.field public static final KEY_LTVID:Ljava/lang/String; = "ltvid"

.field public static final LOGGING_TAG:Ljava/lang/String; = "[InMobi]-4.4.3"

.field public static final METHOD_PLAY_AVAILABLE:Ljava/lang/String; = "isGooglePlayServicesAvailable"

.field public static final PRODUCT_COMMONS:Ljava/lang/String; = "commons"

.field private static a:Lcom/inmobi/commons/internal/CommonsConfig;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/inmobi/commons/cache/CacheController$Validator;

.field private static f:Z

.field private static g:[B

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    .line 110
    new-instance v0, Lcom/inmobi/commons/internal/d;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/d;-><init>()V

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    .line 700
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    .line 701
    const-string v0, "SHA1PRNG"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->h:Ljava/lang/String;

    .line 702
    const-string v0, "Crypto"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->i:Ljava/lang/String;

    .line 716
    const-string v0, "HmacSHA1"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    .line 765
    const-string v0, "RSA"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->k:Ljava/lang/String;

    .line 766
    const-string v0, "RSA/ECB/nopadding"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->l:Ljava/lang/String;

    .line 822
    const-string v0, "aeskeygenerate"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->m:Ljava/lang/String;

    .line 823
    const-string v0, "last_key_generate"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    .line 861
    const-string v0, "AES/CBC/PKCS7Padding"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    .line 862
    const-string v0, "AES"

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    return-void
.end method

.method public static DeAe([B[B[B)[B
    .locals 1

    .prologue
    .line 694
    invoke-static {p0, p1, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static SeMeGe(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-static/range {p0 .. p5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 607
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B[B)[B

    move-result-object v0

    .line 610
    invoke-static {v0, p3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B[B)[B

    move-result-object v1

    .line 614
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v0

    .line 615
    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v1

    .line 619
    invoke-static {p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v2

    .line 620
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v3

    .line 621
    invoke-static {p3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v4

    .line 624
    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v3

    .line 625
    invoke-static {v3, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v2

    .line 627
    invoke-static {v2, p5, p4}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 629
    invoke-static {v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a([B)[B

    move-result-object v2

    .line 632
    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v0

    .line 633
    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b([B[B)[B

    move-result-object v0

    .line 635
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v1

    .line 638
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-object v0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    .line 162
    return-void
.end method

.method static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 149
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/internal/CommonsConfig;

    invoke-direct {v0}, Lcom/inmobi/commons/internal/CommonsConfig;-><init>()V

    .line 150
    invoke-virtual {v0, p0}, Lcom/inmobi/commons/internal/CommonsConfig;->setFromMap(Ljava/util/Map;)V

    .line 151
    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    .line 152
    invoke-static {}, Lcom/inmobi/commons/internal/ApiStatCollector;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsConfig;->getApiStatsConfig()Lcom/inmobi/commons/metric/MetricConfigParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/metric/Logger;->setMetricConfigParams(Lcom/inmobi/commons/metric/MetricConfigParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    const/4 v0, 0x1

    .line 156
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 739
    .line 741
    array-length v0, p0

    int-to-long v0, v0

    .line 742
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 743
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 744
    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 746
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 747
    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 749
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 752
    return-object v1
.end method

.method private static a([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/16 v3, 0x10

    .line 769
    const/4 v1, 0x0

    .line 771
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 772
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 775
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/InternalSDKUtil;->k:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 777
    new-instance v4, Lcom/inmobi/commons/internal/InternalSDKUtil$a;

    invoke-direct {v4, v0, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$a;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 778
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 781
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->l:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 782
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 785
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 801
    :goto_0
    return-object v0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 789
    :catch_1
    move-exception v0

    .line 790
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "InvalidKeySpecException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 791
    :catch_2
    move-exception v0

    .line 792
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 793
    :catch_3
    move-exception v0

    .line 794
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "InvalidKeyException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 795
    :catch_4
    move-exception v0

    .line 796
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 799
    goto :goto_0

    .line 797
    :catch_5
    move-exception v0

    .line 798
    const-string v0, "[InMobi]-4.4.3"

    const-string v2, "BadPaddingException"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 5

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 722
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$d;

    const/4 v2, 0x0

    array-length v3, p1

    sget-object v4, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/inmobi/commons/internal/InternalSDKUtil$d;-><init>([BIILjava/lang/String;)V

    .line 725
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->j:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 726
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 727
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 734
    :goto_0
    return-object v0

    .line 728
    :catch_0
    move-exception v1

    .line 729
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :catch_1
    move-exception v1

    .line 731
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B[B[B)[B
    .locals 5

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$d;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$d;-><init>([BLjava/lang/String;)V

    .line 386
    :try_start_0
    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 387
    const/4 v3, 0x2

    new-instance v4, Lcom/inmobi/commons/internal/InternalSDKUtil$c;

    invoke-direct {v4, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil$c;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 388
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v1

    .line 390
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :catch_1
    move-exception v1

    .line 392
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :catch_2
    move-exception v1

    .line 394
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :catch_3
    move-exception v1

    .line 396
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :catch_4
    move-exception v1

    .line 398
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :catch_5
    move-exception v1

    .line 400
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V
    .locals 2

    .prologue
    .line 441
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    .line 443
    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method

.method private static b()[B
    .locals 2

    .prologue
    .line 706
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->h:Ljava/lang/String;

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 707
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    return-object v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "NoSuchAlgorithmException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    .line 711
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "NoSuchProviderException"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    .line 809
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 811
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 812
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 814
    return-object v0
.end method

.method private static b([B[B[B)[B
    .locals 5

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 665
    new-instance v1, Lcom/inmobi/commons/internal/InternalSDKUtil$d;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->p:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil$d;-><init>([BLjava/lang/String;)V

    .line 667
    new-instance v2, Lcom/inmobi/commons/internal/InternalSDKUtil$c;

    invoke-direct {v2, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil$c;-><init>([B)V

    .line 672
    :try_start_0
    sget-object v3, Lcom/inmobi/commons/internal/InternalSDKUtil;->o:Ljava/lang/String;

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 673
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 674
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :catch_1
    move-exception v1

    .line 679
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "NoSuchPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :catch_2
    move-exception v1

    .line 681
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InvalidKeyException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :catch_3
    move-exception v1

    .line 683
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "IllegalBlockSizeException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :catch_4
    move-exception v1

    .line 685
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "BadPaddingException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :catch_5
    move-exception v1

    .line 687
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InvalidAlgorithmParameterException"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c()[B
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 826
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->m:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 828
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 831
    cmp-long v1, v8, v2

    if-nez v1, :cond_0

    .line 833
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Generating for first time"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 837
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b()[B

    move-result-object v0

    .line 855
    :goto_0
    return-object v0

    .line 841
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 842
    const-wide/32 v6, 0x5265c00

    add-long/2addr v2, v6

    sub-long/2addr v2, v4

    .line 844
    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    .line 846
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "generated again"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 848
    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 849
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 850
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->b()[B

    move-result-object v0

    goto :goto_0

    .line 854
    :cond_1
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "already generated"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->g:[B

    goto :goto_0
.end method

.method public static checkNetworkAvailibility(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 307
    if-nez p0, :cond_0

    move v0, v1

    .line 319
    :goto_0
    return v0

    .line 311
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot check network state"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 319
    goto :goto_0
.end method

.method public static getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 359
    :goto_0
    return p2

    .line 353
    :catch_0
    move-exception v0

    .line 355
    :try_start_1
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 357
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 482
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 483
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 484
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 486
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getConfig()Lcom/inmobi/commons/internal/CommonsConfig;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->a:Lcom/inmobi/commons/internal/CommonsConfig;

    return-object v0
.end method

.method public static getConnectivityType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 222
    const/4 v1, 0x0

    .line 224
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 225
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 227
    if-eqz v0, :cond_5

    .line 228
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 230
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 231
    if-ne v2, v4, :cond_1

    .line 232
    const-string v0, "wifi"

    .line 251
    :cond_0
    :goto_0
    return-object v0

    .line 233
    :cond_1
    if-nez v2, :cond_5

    .line 234
    const-string v0, "carrier"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    if-ne v3, v4, :cond_2

    .line 236
    :try_start_1
    const-string v0, "gprs"

    goto :goto_0

    .line 237
    :cond_2
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    .line 238
    const-string v0, "edge"

    goto :goto_0

    .line 239
    :cond_3
    const/4 v1, 0x3

    if-ne v3, v1, :cond_4

    .line 240
    const-string v0, "umts"

    goto :goto_0

    .line 241
    :cond_4
    if-nez v3, :cond_0

    .line 242
    const-string v0, "carrier"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 248
    :goto_1
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Error getting the network info"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static getDisplayRotation(Landroid/view/Display;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 255
    const/16 v1, -0x3e7

    .line 258
    :try_start_0
    const-class v3, Landroid/view/Display;

    const-string v4, "getRotation"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 269
    :goto_0
    if-eqz v2, :cond_0

    .line 271
    const/4 v0, 0x0

    :try_start_1
    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 277
    :goto_1
    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    :try_start_2
    const-class v3, Landroid/view/Display;

    const-string v4, "getOrientation"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 266
    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    .line 265
    const-string v0, "commons"

    const-string v3, "Unable to access getOrientation method via reflection"

    invoke-static {v0, v3}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :catch_2
    move-exception v0

    .line 274
    const-string v0, "commons"

    const-string v2, "Unable to access display rotation"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public static getFinalRedirectedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 409
    move v3, v0

    move-object v2, p0

    .line 414
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 415
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->addCommonPropertiesToConnection(Ljava/net/HttpURLConnection;)V

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 417
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 419
    const/16 v4, 0x12c

    if-lt v1, v4, :cond_2

    const/16 v4, 0x190

    if-ge v1, v4, :cond_2

    .line 421
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 422
    if-nez v1, :cond_1

    move-object v1, v2

    .line 429
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    .line 435
    :goto_2
    return-object v0

    .line 428
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_0

    add-int/lit8 v2, v3, 0x1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v2, v1

    goto :goto_0

    .line 431
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 433
    :goto_3
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot get redirect url"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 431
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method public static getInMobiInternalVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 587
    const-string v0, "[.]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 588
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 590
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 592
    :try_start_0
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x41

    .line 593
    const-string v4, "T"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    const-string v0, ""

    .line 600
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 594
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getIntFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 339
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 346
    :goto_0
    return p2

    .line 340
    :catch_0
    move-exception v0

    .line 342
    :try_start_1
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "IJ)I"
        }
    .end annotation

    .prologue
    .line 503
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 504
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 505
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 506
    int-to-long v2, v0

    cmp-long v1, v2, p3

    if-gtz v1, :cond_0

    if-lt v0, p2, :cond_0

    .line 507
    return v0

    .line 510
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getLongFromJSON(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 326
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 333
    :goto_0
    return-wide p2

    .line 327
    :catch_0
    move-exception v0

    .line 329
    :try_start_1
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLongFromMap(Ljava/util/Map;Ljava/lang/String;JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "JJ)J"
        }
    .end annotation

    .prologue
    const-wide/32 v2, 0x7fffffff

    const-wide/32 v4, -0x80000000

    .line 492
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 493
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 494
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 495
    cmp-long v6, v0, p4

    if-gtz v6, :cond_0

    cmp-long v6, v0, p2

    if-ltz v6, :cond_0

    .line 499
    :goto_0
    return-wide v0

    :cond_0
    cmp-long v0, p2, v4

    if-gez v0, :cond_1

    move-wide p2, v4

    :cond_1
    long-to-int v0, p2

    cmp-long v1, p4, v2

    if-lez v1, :cond_2

    move-wide p4, v2

    :cond_2
    long-to-int v1, p4

    int-to-long v2, v1

    invoke-static {p0, p1, v0, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getSavedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 365
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 372
    :goto_0
    return-object p2

    .line 366
    :catch_0
    move-exception v0

    .line 368
    :try_start_1
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON with property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found but has bad datatype("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Reverting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 370
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 514
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 516
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 518
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has illegal value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 181
    invoke-static {p0}, Lcom/inmobi/commons/internal/InternalSDKUtil$b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    .line 188
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    .line 193
    :goto_1
    return-object v0

    .line 185
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot get user agent"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    if-nez p0, :cond_1

    .line 121
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 127
    :cond_0
    :goto_0
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 143
    :goto_1
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    goto :goto_0

    .line 130
    :cond_2
    sget-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    if-eqz v0, :cond_3

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->f:Z

    .line 132
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 135
    :cond_3
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMCommons config init: IMCommonsException caught. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inmobi/commons/internal/CommonsException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Exception while getting commons config data."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isDefOrientationLandscape(III)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 282
    if-le p1, p2, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    if-ge p1, p2, :cond_2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 290
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGooglePlayServicesJarIncluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 910
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 916
    :cond_0
    :goto_0
    return v0

    .line 914
    :catch_0
    move-exception v1

    goto :goto_0

    .line 911
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isHexString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 560
    const-string v0, "[0-9A-F]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    return v0
.end method

.method public static isInitializedSuccessfully(Z)Z
    .locals 2

    .prologue
    .line 571
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 572
    :cond_0
    if-eqz p0, :cond_1

    .line 573
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "InMobi not initialized. Call InMobi.initialize before using any InMobi API"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 921
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->isLimitAdTracking()Z

    move-result v0

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 294
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 296
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 299
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 300
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 302
    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 303
    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static keag()[B
    .locals 1

    .prologue
    .line 819
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public static populate(Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 455
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 457
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 461
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_2

    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 463
    if-nez p2, :cond_1

    .line 464
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 466
    check-cast v0, Ljava/util/Map;

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    goto :goto_0

    .line 469
    :cond_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 472
    :cond_3
    return-void
.end method

.method public static populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 525
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 528
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 535
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 536
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 537
    instance-of v5, v2, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    instance-of v5, v3, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 538
    if-nez p2, :cond_0

    .line 539
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Cannot populate to json exception"

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 529
    :catch_1
    move-exception v2

    .line 530
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 541
    :cond_0
    :try_start_2
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 556
    :cond_2
    return-void
.end method

.method public static populateToNewJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 565
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 566
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 567
    return-object v0
.end method

.method public static populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 476
    invoke-static {p0, v0, p2}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populate(Ljava/util/Map;Ljava/util/Map;Z)V

    .line 477
    return-object v0
.end method

.method public static printPublisherTestId()V
    .locals 4

    .prologue
    .line 884
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isGooglePlayServicesJarIncluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;

    move-result-object v0

    .line 887
    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/inmobi/commons/uid/AdvertisingId;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_0

    .line 891
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->getPlatformId()Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/internal/InternalSDKUtil;->c:Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->a()V

    .line 100
    :try_start_0
    const-string v0, "commons"

    sget-object v1, Lcom/inmobi/commons/internal/InternalSDKUtil;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/commons/internal/InternalSDKUtil;->e:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Lcom/inmobi/commons/internal/CommonsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v0, "commons"

    const-string v1, "Unable retrive config for commons product"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static validateAppId(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 206
    if-nez p0, :cond_0

    .line 207
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "appId is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return v0

    .line 211
    :cond_0
    const-string v1, "(x)+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "appId is all xxxxxxx"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    const-string v1, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "appId is all blank"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
