.class Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;
.source "Multimaps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSetMultimap"
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
        "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/SetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/SetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/SetMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/Multimap;)V

    .line 616
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;
    .locals 1

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lorg/roboguice/shaded/goole/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimaps$UnmodifiableSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
