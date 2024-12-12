.class public Lorg/codegist/common/lang/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# instance fields
.field private final constant:I

.field private hashcode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const/16 v0, 0x25

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;-><init>(II)V

    .line 47
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "hashcode"    # I
    .param p2, "constant"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v2, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 50
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "constant must be non zero"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "initial hashcode must be non zero"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "initial constant must be an odd value"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    :goto_3
    const-string v0, "initial hashcode must be an odd value"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/codegist/common/lang/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iput p2, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    .line 55
    iput p1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 56
    return-void

    :cond_0
    move v0, v2

    .line 50
    goto :goto_0

    :cond_1
    move v0, v2

    .line 51
    goto :goto_1

    :cond_2
    move v0, v2

    .line 52
    goto :goto_2

    :cond_3
    move v1, v2

    .line 53
    goto :goto_3
.end method

.method private appendNull()Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 199
    return-object p0
.end method


# virtual methods
.method public append(B)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 75
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 76
    return-object p0
.end method

.method public append(C)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 70
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 71
    return-object p0
.end method

.method public append(D)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 80
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(J)Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 84
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 85
    return-object p0
.end method

.method public append(I)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 60
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 61
    return-object p0
.end method

.method public append(J)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 89
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 90
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    .line 194
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 173
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    goto :goto_0

    .line 175
    :cond_1
    instance-of v0, p1, [J

    if-eqz v0, :cond_2

    .line 176
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([J)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 177
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 178
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([I)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 179
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [S

    if-eqz v0, :cond_4

    .line 180
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([S)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 181
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 182
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([C)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 183
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    .line 184
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([B)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 185
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 186
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([D)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 187
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [F

    if-eqz v0, :cond_8

    .line 188
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([F)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 189
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Z

    if-eqz v0, :cond_9

    .line 190
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([Z)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0

    .line 192
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/codegist/common/lang/HashCodeBuilder;

    goto :goto_0
.end method

.method public append(S)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 65
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 66
    return-object p0
.end method

.method public append(Z)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 94
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    iget v1, p0, Lorg/codegist/common/lang/HashCodeBuilder;->constant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    .line 95
    return-object p0

    .line 94
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 139
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 143
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 140
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 141
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(B)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [C

    .prologue
    .line 131
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 135
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 132
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 133
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(C)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [D

    .prologue
    .line 147
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 151
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 148
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 149
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/codegist/common/lang/HashCodeBuilder;->append(D)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 155
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 159
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 156
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 157
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(F)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [I

    .prologue
    .line 115
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 119
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 116
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 117
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(I)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 4
    .param p1, "array"    # [J

    .prologue
    .line 107
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 111
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 108
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 109
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3}, Lorg/codegist/common/lang/HashCodeBuilder;->append(J)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 99
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 103
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 100
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 101
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [S

    .prologue
    .line 123
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 127
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 124
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 125
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(S)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 2
    .param p1, "array"    # [Z

    .prologue
    .line 163
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/codegist/common/lang/HashCodeBuilder;->appendNull()Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object p0

    .line 167
    .end local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_0
    return-object p0

    .line 164
    .restart local p0    # "this":Lorg/codegist/common/lang/HashCodeBuilder;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 165
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(Z)Lorg/codegist/common/lang/HashCodeBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/codegist/common/lang/HashCodeBuilder;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/codegist/common/lang/HashCodeBuilder;->append(I)Lorg/codegist/common/lang/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/codegist/common/lang/HashCodeBuilder;->hashcode:I

    return v0
.end method
