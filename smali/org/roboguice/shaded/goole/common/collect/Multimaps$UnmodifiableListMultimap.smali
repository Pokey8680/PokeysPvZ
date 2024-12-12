.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableListMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ListMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/ListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ListMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V

    .line 595
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/ListMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
