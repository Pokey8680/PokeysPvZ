.class public Lorg/restlet/util/Triple;
.super Ljava/lang/Object;
.source "Triple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private volatile first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private volatile third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TU;"
    .local p3, "third":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/restlet/util/Triple;->first:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Lorg/restlet/util/Triple;->second:Ljava/lang/Object;

    .line 76
    iput-object p3, p0, Lorg/restlet/util/Triple;->third:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_7

    move v0, v3

    .line 83
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_6

    instance-of v4, p1, Lorg/restlet/util/Triple;

    if-eqz v4, :cond_6

    move-object v1, p1

    .line 84
    check-cast v1, Lorg/restlet/util/Triple;

    .line 86
    .local v1, "triple":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<***>;"
    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 89
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    :cond_3
    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_5
    move v0, v3

    .line 98
    .end local v1    # "triple":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<***>;"
    :cond_6
    :goto_1
    return v0

    .end local v0    # "result":Z
    :cond_7
    move v0, v2

    .line 81
    goto :goto_0

    .restart local v0    # "result":Z
    .restart local v1    # "triple":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<***>;"
    :cond_8
    move v0, v2

    .line 92
    goto :goto_1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    iget-object v0, p0, Lorg/restlet/util/Triple;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    iget-object v0, p0, Lorg/restlet/util/Triple;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public getThird()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    iget-object v0, p0, Lorg/restlet/util/Triple;->third:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 131
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/restlet/util/Triple;->first:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public setSecond(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    .local p1, "second":Ljava/lang/Object;, "TU;"
    iput-object p1, p0, Lorg/restlet/util/Triple;->second:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public setThird(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    .local p1, "third":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lorg/restlet/util/Triple;->third:Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lorg/restlet/util/Triple;, "Lorg/restlet/util/Triple<TT;TU;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/Triple;->getThird()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
