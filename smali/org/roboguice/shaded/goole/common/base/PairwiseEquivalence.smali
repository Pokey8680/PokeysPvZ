.class final Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;
.super Lorg/roboguice/shaded/goole/common/base/Equivalence;
.source "PairwiseEquivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/base/Equivalence",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/base/Equivalence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    .local p1, "elementEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<-TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 34
    return-void
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    .local p1, "iterableA":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "iterableB":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const/4 v2, 0x0

    .line 38
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 39
    .local v0, "iteratorA":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "iteratorB":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Iterable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->doEquivalent(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method protected doHash(Ljava/lang/Iterable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    const v1, 0x13381

    .line 53
    .local v1, "hash":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "element":Ljava/lang/Object;, "TT;"
    mul-int/lit16 v3, v1, 0x616f

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v4, v0}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 55
    goto :goto_0

    .line 56
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    return v1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->doHash(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;

    .line 63
    .local v0, "that":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<*>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x46a3eb07

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;, "Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/PairwiseEquivalence;->elementEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pairwise()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method