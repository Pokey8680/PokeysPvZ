.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# instance fields
.field private final transient map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 40
    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 50
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->elementSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset<TE;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
