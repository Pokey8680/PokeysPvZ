.class public Lorg/restlet/data/Digest;
.super Ljava/lang/Object;
.source "Digest.java"


# static fields
.field public static final ALGORITHM_HTTP_DIGEST:Ljava/lang/String; = "HTTP-DIGEST-A1"

.field public static final ALGORITHM_MD2:Ljava/lang/String; = "MD2"

.field public static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field public static final ALGORITHM_NONE:Ljava/lang/String; = "NONE"

.field public static final ALGORITHM_SHA_1:Ljava/lang/String; = "SHA-1"

.field public static final ALGORITHM_SHA_256:Ljava/lang/String; = "SHA-256"

.field public static final ALGORITHM_SHA_384:Ljava/lang/String; = "SHA-384"

.field public static final ALGORITHM_SHA_512:Ljava/lang/String; = "SHA-512"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final value:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/restlet/data/Digest;->algorithm:Ljava/lang/String;

    .line 106
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/restlet/data/Digest;->value:[B

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/restlet/data/Digest;->value:[B

    aget-byte v2, p2, v0

    aput-byte v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 91
    const-string v0, "MD5"

    invoke-direct {p0, v0, p1}, Lorg/restlet/data/Digest;-><init>(Ljava/lang/String;[B)V

    .line 92
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    instance-of v1, p1, Lorg/restlet/data/Digest;

    .line 116
    .local v1, "result":Z
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 117
    check-cast v0, Lorg/restlet/data/Digest;

    .line 118
    .local v0, "d":Lorg/restlet/data/Digest;
    invoke-virtual {p0}, Lorg/restlet/data/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 119
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/data/Digest;->getValue()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/Digest;->getValue()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 121
    .end local v0    # "d":Lorg/restlet/data/Digest;
    :cond_0
    :goto_0
    return v1

    .line 119
    .restart local v0    # "d":Lorg/restlet/data/Digest;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/restlet/data/Digest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()[B
    .locals 3

    .prologue
    .line 140
    iget-object v2, p0, Lorg/restlet/data/Digest;->value:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 141
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/restlet/data/Digest;->value:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 142
    iget-object v2, p0, Lorg/restlet/data/Digest;->value:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest [algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Digest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/data/Digest;->value:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
