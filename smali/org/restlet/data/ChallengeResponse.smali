.class public final Lorg/restlet/data/ChallengeResponse;
.super Lorg/restlet/data/ChallengeMessage;
.source "ChallengeResponse.java"


# instance fields
.field private volatile clientNonce:Ljava/lang/String;

.field private volatile digestRef:Lorg/restlet/data/Reference;

.field private volatile identifier:Ljava/lang/String;

.field private volatile quality:Ljava/lang/String;

.field private volatile secret:[C

.field private volatile secretAlgorithm:Ljava/lang/String;

.field private volatile serverNounceCount:I

.field private volatile timeIssued:J


# direct methods
.method public constructor <init>(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "challengeRequest"    # Lorg/restlet/data/ChallengeRequest;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "secret"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const-string v5, "NONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Ljava/lang/String;[CLjava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Ljava/lang/String;[C)V
    .locals 6
    .param p1, "challengeRequest"    # Lorg/restlet/data/ChallengeRequest;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "secret"    # [C

    .prologue
    .line 102
    const-string v5, "NONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Ljava/lang/String;[CLjava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Ljava/lang/String;[CLjava/lang/String;)V
    .locals 18
    .param p1, "challengeRequest"    # Lorg/restlet/data/ChallengeRequest;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "secret"    # [C
    .param p5, "secretAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v17}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Lorg/restlet/util/Series;Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/restlet/data/Reference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lorg/restlet/engine/security/AuthenticatorUtils;->update(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;)V
    .locals 2
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;

    .prologue
    const/4 v1, 0x0

    .line 159
    move-object v0, v1

    check-cast v0, [C

    invoke-direct {p0, p1, v1, v0}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[C)V

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 273
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[C)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p3, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[CLorg/restlet/util/Series;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "secret"    # [C

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[CLorg/restlet/util/Series;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;[CLorg/restlet/util/Series;)V
    .locals 16
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "secret"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Ljava/lang/String;",
            "[C",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p4, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const-string v5, "NONE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v15}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;Lorg/restlet/util/Series;Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/restlet/data/Reference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 244
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Lorg/restlet/util/Series;Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/restlet/data/Reference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p3, "identifier"    # Ljava/lang/String;
    .param p4, "secret"    # [C
    .param p5, "secretAlgorithm"    # Ljava/lang/String;
    .param p6, "realm"    # Ljava/lang/String;
    .param p7, "quality"    # Ljava/lang/String;
    .param p8, "digestRef"    # Lorg/restlet/data/Reference;
    .param p9, "digestAlgorithm"    # Ljava/lang/String;
    .param p10, "opaque"    # Ljava/lang/String;
    .param p11, "clientNonce"    # Ljava/lang/String;
    .param p12, "serverNonce"    # Ljava/lang/String;
    .param p13, "serverNounceCount"    # I
    .param p14, "timeIssued"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;",
            "Ljava/lang/String;",
            "[C",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/restlet/data/Reference;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v5, p2

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p12

    invoke-direct/range {v2 .. v8}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/restlet/data/ChallengeResponse;->clientNonce:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/restlet/data/ChallengeResponse;->digestRef:Lorg/restlet/data/Reference;

    .line 207
    iput-object p3, p0, Lorg/restlet/data/ChallengeResponse;->identifier:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/restlet/data/ChallengeResponse;->quality:Ljava/lang/String;

    .line 209
    iput-object p4, p0, Lorg/restlet/data/ChallengeResponse;->secret:[C

    .line 210
    iput-object p5, p0, Lorg/restlet/data/ChallengeResponse;->secretAlgorithm:Ljava/lang/String;

    .line 211
    move/from16 v0, p13

    iput v0, p0, Lorg/restlet/data/ChallengeResponse;->serverNounceCount:I

    .line 212
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lorg/restlet/data/ChallengeResponse;->timeIssued:J

    .line 213
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 279
    if-ne p1, p0, :cond_2

    move v2, v4

    .line 282
    .local v2, "result":Z
    :goto_0
    if-nez v2, :cond_1

    .line 285
    instance-of v6, p1, Lorg/restlet/data/ChallengeResponse;

    if-eqz v6, :cond_1

    move-object v3, p1

    .line 286
    check-cast v3, Lorg/restlet/data/ChallengeResponse;

    .line 288
    .local v3, "that":Lorg/restlet/data/ChallengeResponse;
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 289
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 294
    :goto_1
    if-eqz v2, :cond_1

    .line 295
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 296
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 301
    :goto_2
    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 303
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/data/ChallengeScheme;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 308
    :goto_3
    if-eqz v2, :cond_1

    .line 309
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    if-nez v6, :cond_a

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v7

    if-ne v6, v7, :cond_9

    move v2, v4

    .line 330
    .end local v3    # "that":Lorg/restlet/data/ChallengeResponse;
    :cond_1
    :goto_4
    return v2

    .end local v2    # "result":Z
    :cond_2
    move v2, v5

    .line 279
    goto :goto_0

    .line 291
    .restart local v2    # "result":Z
    .restart local v3    # "that":Lorg/restlet/data/ChallengeResponse;
    :cond_3
    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move v2, v4

    :goto_5
    goto :goto_1

    :cond_4
    move v2, v5

    goto :goto_5

    .line 298
    :cond_5
    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    move v2, v4

    :goto_6
    goto :goto_2

    :cond_6
    move v2, v5

    goto :goto_6

    .line 305
    :cond_7
    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    if-nez v6, :cond_8

    move v2, v4

    :goto_7
    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_7

    :cond_9
    move v2, v5

    .line 312
    goto :goto_4

    .line 314
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v7

    array-length v7, v7

    if-ne v6, v7, :cond_1

    .line 315
    const/4 v0, 0x1

    .line 316
    .local v0, "equals":Z
    const/4 v1, 0x0

    .line 317
    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_c

    if-eqz v0, :cond_c

    .line 318
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v6

    aget-char v6, v6, v1

    invoke-virtual {v3}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v7

    aget-char v7, v7, v1

    if-ne v6, v7, :cond_b

    move v0, v4

    .line 317
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_b
    move v0, v5

    .line 318
    goto :goto_9

    .line 321
    :cond_c
    move v2, v0

    goto :goto_4
.end method

.method public getClientNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->clientNonce:Ljava/lang/String;

    return-object v0
.end method

.method public getDigestRef()Lorg/restlet/data/Reference;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->digestRef:Lorg/restlet/data/Reference;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lorg/restlet/data/ChallengeResponse$1;

    invoke-direct {v0, p0}, Lorg/restlet/data/ChallengeResponse$1;-><init>(Lorg/restlet/data/ChallengeResponse;)V

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()[C
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->secret:[C

    return-object v0
.end method

.method public getSecretAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/restlet/data/ChallengeResponse;->secretAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getServerNounceCount()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lorg/restlet/data/ChallengeResponse;->serverNounceCount:I

    return v0
.end method

.method public getServerNounceCountAsHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getServerNounceCount()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatNonceCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeIssued()J
    .locals 2

    .prologue
    .line 431
    iget-wide v0, p0, Lorg/restlet/data/ChallengeResponse;->timeIssued:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 439
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

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
    .line 450
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->clientNonce:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setDigestRef(Lorg/restlet/data/Reference;)V
    .locals 0
    .param p1, "digestRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 460
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->digestRef:Lorg/restlet/data/Reference;

    .line 461
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 470
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->identifier:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 0
    .param p1, "quality"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->quality:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 1
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 500
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/restlet/data/ChallengeResponse;->secret:[C

    .line 501
    return-void

    .line 500
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method public setSecret([C)V
    .locals 0
    .param p1, "secret"    # [C

    .prologue
    .line 490
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->secret:[C

    .line 491
    return-void
.end method

.method public setSecretAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "secretDigestAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 511
    iput-object p1, p0, Lorg/restlet/data/ChallengeResponse;->secretAlgorithm:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setServerNounceCount(I)V
    .locals 0
    .param p1, "serverNounceCount"    # I

    .prologue
    .line 521
    iput p1, p0, Lorg/restlet/data/ChallengeResponse;->serverNounceCount:I

    .line 522
    return-void
.end method

.method public setTimeIssued(J)V
    .locals 1
    .param p1, "timeIssued"    # J

    .prologue
    .line 532
    iput-wide p1, p0, Lorg/restlet/data/ChallengeResponse;->timeIssued:J

    .line 533
    return-void
.end method
