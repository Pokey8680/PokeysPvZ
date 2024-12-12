.class public final Lorg/codegist/common/lang/Randoms;
.super Ljava/lang/Object;
.source "Randoms.java"


# static fields
.field private static final ALPHANUM:[C

.field private static final RDM:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/codegist/common/lang/Randoms;->ALPHANUM:[C

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/codegist/common/lang/Randoms;->RDM:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static randomAlphaNumeric(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 43
    new-array v0, p0, [C

    .line 44
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 45
    sget-object v2, Lorg/codegist/common/lang/Randoms;->ALPHANUM:[C

    sget-object v3, Lorg/codegist/common/lang/Randoms;->RDM:Ljava/security/SecureRandom;

    sget-object v4, Lorg/codegist/common/lang/Randoms;->ALPHANUM:[C

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
