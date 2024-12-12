.class public Lorg/restlet/util/Couple;
.super Ljava/lang/Object;
.source "Couple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    .local p2, "second":Ljava/lang/Object;, "TU;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/restlet/util/Couple;->first:Ljava/lang/Object;

    .line 68
    iput-object p2, p0, Lorg/restlet/util/Couple;->second:Ljava/lang/Object;

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p0, p1, :cond_5

    move v1, v3

    .line 75
    .local v1, "result":Z
    :goto_0
    if-nez v1, :cond_4

    instance-of v4, p1, Lorg/restlet/util/Couple;

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 76
    check-cast v0, Lorg/restlet/util/Couple;

    .line 78
    .local v0, "couple":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<**>;"
    invoke-virtual {v0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    :cond_1
    invoke-virtual {v0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    move v1, v3

    .line 86
    .end local v0    # "couple":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<**>;"
    :cond_4
    :goto_1
    return v1

    .end local v1    # "result":Z
    :cond_5
    move v1, v2

    .line 73
    goto :goto_0

    .restart local v0    # "couple":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<**>;"
    .restart local v1    # "result":Z
    :cond_6
    move v1, v2

    .line 81
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
    .line 95
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    iget-object v0, p0, Lorg/restlet/util/Couple;->first:Ljava/lang/Object;

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
    .line 104
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    iget-object v0, p0, Lorg/restlet/util/Couple;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 110
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

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
    .line 120
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    .local p1, "first":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/restlet/util/Couple;->first:Ljava/lang/Object;

    .line 121
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
    .line 130
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    .local p1, "second":Ljava/lang/Object;, "TU;"
    iput-object p1, p0, Lorg/restlet/util/Couple;->second:Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    .local p0, "this":Lorg/restlet/util/Couple;, "Lorg/restlet/util/Couple<TT;TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/util/Couple;->getSecond()Ljava/lang/Object;

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
