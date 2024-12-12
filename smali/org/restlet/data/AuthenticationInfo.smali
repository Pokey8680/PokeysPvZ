.class public Lorg/restlet/data/AuthenticationInfo;
.super Ljava/lang/Object;
.source "AuthenticationInfo.java"


# instance fields
.field private volatile clientNonce:Ljava/lang/String;

.field private volatile nextServerNonce:Ljava/lang/String;

.field private volatile nonceCount:I

.field private volatile quality:Ljava/lang/String;

.field private volatile responseDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nextNonce"    # Ljava/lang/String;
    .param p2, "nonceCount"    # I
    .param p3, "cnonce"    # Ljava/lang/String;
    .param p4, "quality"    # Ljava/lang/String;
    .param p5, "responseDigest"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/restlet/data/AuthenticationInfo;->nextServerNonce:Ljava/lang/String;

    .line 95
    iput p2, p0, Lorg/restlet/data/AuthenticationInfo;->nonceCount:I

    .line 96
    iput-object p3, p0, Lorg/restlet/data/AuthenticationInfo;->clientNonce:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lorg/restlet/data/AuthenticationInfo;->quality:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lorg/restlet/data/AuthenticationInfo;->responseDigest:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    if-ne p1, p0, :cond_4

    move v0, v2

    .line 107
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_3

    .line 110
    instance-of v4, p1, Lorg/restlet/data/AuthenticationInfo;

    if-eqz v4, :cond_3

    move-object v1, p1

    .line 111
    check-cast v1, Lorg/restlet/data/AuthenticationInfo;

    .line 112
    .local v1, "that":Lorg/restlet/data/AuthenticationInfo;
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 113
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    :goto_1
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNonceCount()I

    move-result v4

    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getNonceCount()I

    move-result v5

    if-ne v4, v5, :cond_7

    move v0, v2

    .line 123
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 125
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 133
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 141
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 150
    .end local v1    # "that":Lorg/restlet/data/AuthenticationInfo;
    :cond_3
    :goto_5
    return v0

    .end local v0    # "result":Z
    :cond_4
    move v0, v3

    .line 104
    goto :goto_0

    .line 116
    .restart local v0    # "result":Z
    .restart local v1    # "that":Lorg/restlet/data/AuthenticationInfo;
    :cond_5
    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move v0, v2

    :goto_6
    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_6

    :cond_7
    move v0, v3

    .line 120
    goto :goto_2

    .line 127
    :cond_8
    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    move v0, v2

    :goto_7
    goto :goto_3

    :cond_9
    move v0, v3

    goto :goto_7

    .line 135
    :cond_a
    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    move v0, v2

    :goto_8
    goto :goto_4

    :cond_b
    move v0, v3

    goto :goto_8

    .line 144
    :cond_c
    invoke-virtual {v1}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    move v0, v2

    :goto_9
    goto :goto_5

    :cond_d
    move v0, v3

    goto :goto_9
.end method

.method public getClientNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/restlet/data/AuthenticationInfo;->clientNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNextServerNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/restlet/data/AuthenticationInfo;->nextServerNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceCount()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lorg/restlet/data/AuthenticationInfo;->nonceCount:I

    return v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/restlet/data/AuthenticationInfo;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/restlet/data/AuthenticationInfo;->responseDigest:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 208
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNonceCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setClientNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientNonce"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/restlet/data/AuthenticationInfo;->clientNonce:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setNextServerNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "nextNonce"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/restlet/data/AuthenticationInfo;->nextServerNonce:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setNonceCount(I)V
    .locals 0
    .param p1, "nonceCount"    # I

    .prologue
    .line 240
    iput p1, p0, Lorg/restlet/data/AuthenticationInfo;->nonceCount:I

    .line 241
    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0
    .param p1, "qop"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lorg/restlet/data/AuthenticationInfo;->quality:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setResponseDigest(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseDigest"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/restlet/data/AuthenticationInfo;->responseDigest:Ljava/lang/String;

    .line 267
    return-void
.end method
