.class public Lcom/inmobi/androidsdk/bootstrapper/PkParams;
.super Ljava/lang/Object;
.source "PkParams.java"


# static fields
.field public static SK_ALGORITHM:Ljava/lang/String;

.field public static SK_EXPONENT:Ljava/lang/String;

.field public static SK_MODULUS:Ljava/lang/String;

.field public static SK_VERSION:Ljava/lang/String;


# instance fields
.field a:Lcom/inmobi/commons/uid/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    return-object v0
.end method

.method public getExponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    return-object v0
.end method

.method public getModulus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "pk"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 51
    const-string v1, "ver"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key ver has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_0
    const-string v1, "alg"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key alg has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, "rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    const-string v1, "val"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    .line 71
    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    :cond_4
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 98
    :cond_5
    return-void
.end method
