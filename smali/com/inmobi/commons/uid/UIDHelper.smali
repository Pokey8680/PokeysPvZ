.class public Lcom/inmobi/commons/uid/UIDHelper;
.super Ljava/lang/Object;
.source "UIDHelper.java"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Ljava/lang/String;

.field private static c:Lcom/inmobi/commons/uid/AdvertisingId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/uid/UIDHelper;->a:Landroid/net/Uri;

    .line 36
    sput-object v1, Lcom/inmobi/commons/uid/UIDHelper;->b:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/inmobi/commons/uid/AdvertisingId;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 144
    const-string v1, ""

    .line 149
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 151
    array-length v0, v2

    new-array v3, v0, [B

    .line 152
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 154
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 155
    aget-byte v5, v2, v0

    array-length v6, v4

    rem-int v6, v0, v6

    aget-byte v6, v4, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/inmobi/commons/thirdparty/Base64;->encode([BI)[B

    move-result-object v2

    .line 158
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Exception in xor with random integer"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private static a([BILjavax/crypto/Cipher;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x40

    const/4 v0, 0x0

    .line 203
    new-array v2, v0, [B

    .line 204
    new-array v3, v0, [B

    .line 206
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 207
    :cond_0
    array-length v4, p0

    .line 209
    new-array v2, v1, [B

    move v7, v0

    move-object v0, v2

    move-object v2, v3

    move v3, v7

    .line 211
    :goto_0
    if-ge v3, v4, :cond_2

    .line 212
    if-lez v3, :cond_1

    rem-int v5, v3, v1

    if-nez v5, :cond_1

    .line 213
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 214
    invoke-static {v2, v0}, Lcom/inmobi/commons/uid/UIDHelper;->a([B[B)[B

    move-result-object v2

    .line 216
    add-int/lit8 v0, v3, 0x40

    if-le v0, v4, :cond_3

    .line 217
    sub-int v0, v4, v3

    .line 219
    :goto_1
    new-array v0, v0, [B

    .line 221
    :cond_1
    rem-int v5, v3, v1

    aget-byte v6, p0, v3

    aput-byte v6, v0, v5

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {p2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 225
    invoke-static {v2, v0}, Lcom/inmobi/commons/uid/UIDHelper;->a([B[B)[B

    move-result-object v0

    .line 227
    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 232
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const-string v0, "TEST_EMULATOR"

    .line 106
    :goto_0
    return-object v0

    .line 90
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 94
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 99
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Exception in getting ODIN-1"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p0, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p0, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static encryptRSA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 168
    .line 169
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 197
    :goto_0
    return-object v0

    .line 175
    :cond_1
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    const-string v2, "C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 176
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 177
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 178
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v4, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 179
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 182
    const-string v2, "RSA/ECB/nopadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 185
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 187
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/uid/UIDHelper;->a([BILjavax/crypto/Cipher;)[B

    move-result-object v0

    .line 189
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inmobi/commons/thirdparty/Base64;->encode([BI)[B

    move-result-object v2

    .line 192
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v2, "[InMobi]-4.4.3"

    const-string v3, "Exception in encryptRSA"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAdvertisingId()Lcom/inmobi/commons/uid/AdvertisingId;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/inmobi/commons/uid/UIDHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getFBId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/uid/UIDHelper;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object v0, v6

    .line 139
    :cond_1
    :goto_0
    return-object v0

    .line 130
    :cond_2
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    move-object v0, v6

    .line 133
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "[InMobi]-4.4.3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve Facebook attrib id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 139
    goto :goto_0
.end method

.method public static getODIN1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/inmobi/commons/uid/UIDHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlatformId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 241
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 242
    const-string v2, "com.inmobi.commons.uid.PlatformId"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 243
    const-string v3, "getAndroidId"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 244
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 248
    goto :goto_0
.end method

.method public static getRSAKeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "1"

    return-object v0
.end method

.method public static getUM5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/inmobi/commons/uid/UIDHelper;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAdvertisingId()V
    .locals 4

    .prologue
    .line 258
    new-instance v0, Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/AdvertisingId;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    .line 259
    sget-object v0, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "gpid"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/AdvertisingId;->a(Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/inmobi/commons/uid/UIDHelper;->c:Lcom/inmobi/commons/uid/AdvertisingId;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "limitadtrck"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/uid/AdvertisingId;->a(Z)V

    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/commons/uid/UIDHelper$a;

    invoke-direct {v1}, Lcom/inmobi/commons/uid/UIDHelper$a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    sput-object p0, Lcom/inmobi/commons/uid/UIDHelper;->b:Ljava/lang/String;

    .line 64
    return-void
.end method
