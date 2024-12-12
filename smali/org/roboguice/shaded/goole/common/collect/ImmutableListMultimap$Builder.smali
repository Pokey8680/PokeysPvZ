.class public final Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 206
    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Comparator;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 217
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Comparator;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 168
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 179
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 184
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 189
    return-object p0
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    .line 195
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/Multimap;

    .prologue
    .line 158
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;->putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
