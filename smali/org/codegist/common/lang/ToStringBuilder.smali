.class public Lorg/codegist/common/lang/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"


# instance fields
.field private done:Z

.field private first:Z

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->first:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->done:Z

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    .line 38
    return-void
.end method

.method private appendComa()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->first:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->first:Z

    .line 174
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;B)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # B

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 78
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # C

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 84
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # D

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 66
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 67
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # F

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 60
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 48
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 54
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/Object;

    .prologue
    .line 143
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 145
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .end local p0    # "this":Lorg/codegist/common/lang/ToStringBuilder;
    .end local p2    # "field":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 147
    .restart local p0    # "this":Lorg/codegist/common/lang/ToStringBuilder;
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, [J

    if-eqz v0, :cond_2

    .line 148
    check-cast p2, [J

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[J)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 149
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_2
    instance-of v0, p2, [I

    if-eqz v0, :cond_3

    .line 150
    check-cast p2, [I

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[I)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 151
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, [S

    if-eqz v0, :cond_4

    .line 152
    check-cast p2, [S

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[S)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 153
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, [C

    if-eqz v0, :cond_5

    .line 154
    check-cast p2, [C

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[C)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 155
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, [B

    if-eqz v0, :cond_6

    .line 156
    check-cast p2, [B

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[B)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 157
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, [D

    if-eqz v0, :cond_7

    .line 158
    check-cast p2, [D

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[D)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 159
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_7
    instance-of v0, p2, [F

    if-eqz v0, :cond_8

    .line 160
    check-cast p2, [F

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[F)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 161
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_8
    instance-of v0, p2, [Z

    if-eqz v0, :cond_9

    .line 162
    check-cast p2, [Z

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[Z)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 165
    .restart local p2    # "field":Ljava/lang/Object;
    :cond_9
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "field":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(Ljava/lang/String;S)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # S

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 42
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 72
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [B

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 126
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [C

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 132
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [D

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 114
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [F

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 108
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [I

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 96
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [J

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 102
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "field"    # [Ljava/lang/Object;

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 138
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [S

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 90
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/codegist/common/lang/ToStringBuilder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "v"    # [Z

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/codegist/common/lang/ToStringBuilder;->appendComa()V

    .line 120
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->done:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->done:Z

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/codegist/common/lang/ToStringBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
