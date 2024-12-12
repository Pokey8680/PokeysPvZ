.class public Lorg/codegist/common/lang/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private equals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    return-void
.end method


# virtual methods
.method public append(BB)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # B
    .param p2, "r"    # B

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-object p0

    .line 70
    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # C
    .param p2, "r"    # C

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-object p0

    .line 64
    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 5
    .param p1, "l"    # D
    .param p3, "r"    # D

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-object p0

    .line 76
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(FF)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 2
    .param p1, "l"    # F
    .param p2, "r"    # F

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-object p0

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(II)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # I
    .param p2, "r"    # I

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-object p0

    .line 52
    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # J
    .param p3, "r"    # J

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-object p0

    .line 94
    :cond_0
    cmp-long v0, p3, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-boolean v2, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v2, :cond_1

    .line 286
    .end local p1    # "l":Ljava/lang/Object;
    .end local p2    # "r":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 253
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 254
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 255
    :cond_2
    iput-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 258
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "lClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_6

    .line 260
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    instance-of v2, p2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_5

    .line 261
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p2, Ljava/math/BigDecimal;

    .end local p2    # "r":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 263
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 265
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 266
    iput-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 267
    :cond_7
    instance-of v1, p1, [J

    if-eqz v1, :cond_8

    .line 268
    check-cast p1, [J

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [J

    check-cast p2, [J

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([J[J)Lorg/codegist/common/lang/EqualsBuilder;

    goto :goto_0

    .line 269
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, [I

    if-eqz v1, :cond_9

    .line 270
    check-cast p1, [I

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [I

    check-cast p2, [I

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([I[I)Lorg/codegist/common/lang/EqualsBuilder;

    goto :goto_0

    .line 271
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_9
    instance-of v1, p1, [S

    if-eqz v1, :cond_a

    .line 272
    check-cast p1, [S

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [S

    check-cast p2, [S

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([S[S)Lorg/codegist/common/lang/EqualsBuilder;

    goto :goto_0

    .line 273
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, [C

    if-eqz v1, :cond_b

    .line 274
    check-cast p1, [C

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [C

    check-cast p2, [C

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([C[C)Lorg/codegist/common/lang/EqualsBuilder;

    goto :goto_0

    .line 275
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, [B

    if-eqz v1, :cond_c

    .line 276
    check-cast p1, [B

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([B[B)Lorg/codegist/common/lang/EqualsBuilder;

    goto/16 :goto_0

    .line 277
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, [D

    if-eqz v1, :cond_d

    .line 278
    check-cast p1, [D

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [D

    check-cast p2, [D

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([D[D)Lorg/codegist/common/lang/EqualsBuilder;

    goto/16 :goto_0

    .line 279
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, [F

    if-eqz v1, :cond_e

    .line 280
    check-cast p1, [F

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [F

    check-cast p2, [F

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([F[F)Lorg/codegist/common/lang/EqualsBuilder;

    goto/16 :goto_0

    .line 281
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_e
    instance-of v1, p1, [Z

    if-eqz v1, :cond_f

    .line 282
    check-cast p1, [Z

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [Z

    check-cast p2, [Z

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([Z[Z)Lorg/codegist/common/lang/EqualsBuilder;

    goto/16 :goto_0

    .line 284
    .restart local p1    # "l":Ljava/lang/Object;
    .restart local p2    # "r":Ljava/lang/Object;
    :cond_f
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "l":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "r":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/codegist/common/lang/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # S
    .param p2, "r"    # S

    .prologue
    .line 57
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-object p0

    .line 58
    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "l"    # Z
    .param p2, "r"    # Z

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-object p0

    .line 88
    :cond_0
    if-ne p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [B
    .param p2, "r"    # [B

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object p0

    .line 185
    :cond_1
    if-eq p1, p2, :cond_0

    .line 186
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 187
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 190
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 191
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 194
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 195
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(BB)Lorg/codegist/common/lang/EqualsBuilder;

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [C
    .param p2, "r"    # [C

    .prologue
    const/4 v3, 0x0

    .line 167
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-object p0

    .line 168
    :cond_1
    if-eq p1, p2, :cond_0

    .line 169
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 170
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 173
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 174
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 177
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 178
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(CC)Lorg/codegist/common/lang/EqualsBuilder;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 6
    .param p1, "l"    # [D
    .param p2, "r"    # [D

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object p0

    .line 202
    :cond_1
    if-eq p1, p2, :cond_0

    .line 203
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 204
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 207
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 208
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 211
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 212
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codegist/common/lang/EqualsBuilder;->append(DD)Lorg/codegist/common/lang/EqualsBuilder;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [F
    .param p2, "r"    # [F

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-object p0

    .line 219
    :cond_1
    if-eq p1, p2, :cond_0

    .line 220
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 221
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 224
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 225
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 228
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 229
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(FF)Lorg/codegist/common/lang/EqualsBuilder;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [I
    .param p2, "r"    # [I

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object p0

    .line 134
    :cond_1
    if-eq p1, p2, :cond_0

    .line 135
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 136
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 139
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 140
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 143
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 144
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(II)Lorg/codegist/common/lang/EqualsBuilder;

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 6
    .param p1, "l"    # [J
    .param p2, "r"    # [J

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-object p0

    .line 117
    :cond_1
    if-eq p1, p2, :cond_0

    .line 118
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 119
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 122
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 123
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 126
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 127
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codegist/common/lang/EqualsBuilder;->append(JJ)Lorg/codegist/common/lang/EqualsBuilder;

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [Ljava/lang/Object;
    .param p2, "r"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object p0

    .line 100
    :cond_1
    if-eq p1, p2, :cond_0

    .line 101
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 102
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 105
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 106
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 109
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 110
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/codegist/common/lang/EqualsBuilder;

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [S
    .param p2, "r"    # [S

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object p0

    .line 151
    :cond_1
    if-eq p1, p2, :cond_0

    .line 152
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 153
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 156
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 157
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 160
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 161
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(SS)Lorg/codegist/common/lang/EqualsBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 4
    .param p1, "l"    # [Z
    .param p2, "r"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object p0

    .line 236
    :cond_1
    if-eq p1, p2, :cond_0

    .line 237
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 238
    :cond_2
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 241
    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    .line 242
    iput-boolean v3, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0

    .line 245
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-eqz v1, :cond_0

    .line 246
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/codegist/common/lang/EqualsBuilder;->append(ZZ)Lorg/codegist/common/lang/EqualsBuilder;

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendSuper(Z)Lorg/codegist/common/lang/EqualsBuilder;
    .locals 1
    .param p1, "f"    # Z

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-object p0

    .line 46
    :cond_0
    iput-boolean p1, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    goto :goto_0
.end method

.method public equals()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lorg/codegist/common/lang/EqualsBuilder;->equals:Z

    return v0
.end method
