.class public final Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;-><init>()V

    .line 498
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    .line 499
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 513
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 526
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 539
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    .line 552
    return-object p0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 490
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->contents:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 562
    .local v0, "contentsArray":[Ljava/lang/Object;, "[TE;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->comparator:Ljava/util/Comparator;

    iget v3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->size:I

    invoke-static {v2, v3, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v1

    .line 563
    .local v1, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->size()I

    move-result v2

    iput v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet$Builder;->size:I

    .line 564
    return-object v1
.end method