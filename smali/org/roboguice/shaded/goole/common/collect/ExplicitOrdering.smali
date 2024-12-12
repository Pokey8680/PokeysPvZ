.class final Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "ExplicitOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->buildRankMap(Ljava/util/List;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V

    .line 33
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "rankMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 37
    return-void
.end method

.method private static buildRankMap(Ljava/util/List;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 54
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<TT;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "rank":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 56
    .local v4, "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "rank":I
    .local v3, "rank":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move v2, v3

    .line 57
    .end local v3    # "rank":I
    .restart local v2    # "rank":I
    goto :goto_0

    .line 58
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v5

    return-object v5
.end method

.method private rank(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 45
    .local v0, "rank":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 46
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Ordering$IncomparableValueException;

    invoke-direct {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;

    .line 64
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<*>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 66
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<*>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.explicit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;->rankMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

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
