.class public abstract Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    .line 83
    return-void
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :goto_0
    return-object p0

    .restart local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;

    invoke-direct {v0, p0, p0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$1;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/collect/FluentIterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    .local p0, "iterable":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    return-object v0
.end method


# virtual methods
.method public final allMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->all(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->any(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 133
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final copyInto(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<-TE;>;>(TC;)TC;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "TC;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v2, v2, Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 456
    :cond_0
    return-object p1

    .line 452
    :cond_1
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 453
    .local v1, "item":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final cycle()Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Class.isInstance"
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->filter(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v1

    goto :goto_0
.end method

.method public final firstMatch(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->tryFind(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final index(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TE;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TE;TK;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->index(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final last()Lorg/roboguice/shaded/goole/common/base/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Optional",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v4, v4, Ljava/util/List;

    if-eqz v4, :cond_1

    .line 254
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v2, Ljava/util/List;

    .line 255
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v4

    .line 278
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_0
    return-object v4

    .line 258
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v4

    goto :goto_0

    .line 260
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_1
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 261
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Optional;->absent()Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v4

    goto :goto_0

    .line 270
    :cond_2
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    instance-of v4, v4, Ljava/util/SortedSet;

    if-eqz v4, :cond_3

    .line 271
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    check-cast v3, Ljava/util/SortedSet;

    .line 272
    .local v3, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v4

    goto :goto_0

    .line 276
    .end local v3    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "current":Ljava/lang/Object;, "TE;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 278
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Optional;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Optional;

    move-result-object v4

    goto :goto_0
.end method

.method public final limit(I)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v0

    return v0
.end method

.method public final skip(I)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .param p1, "numberToSkip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->skip(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "Array.newArray(Class, int)"
    .end annotation

    .prologue
    .line 436
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TE;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TE;TV;>;"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "valueFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TE;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->toMap(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public final toSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 348
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedSet(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transform(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TE;TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TE;TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public transformAndConcat(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TE;+",
            "Ljava/lang/Iterable",
            "<+TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TE;+Ljava/lang/Iterable<+TT;>;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->transform(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->concat(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public final uniqueIndex(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TE;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable<TE;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TE;TK;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->iterable:Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->uniqueIndex(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
