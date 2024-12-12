.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;)V
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    .line 248
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->unfiltered:Lorg/roboguice/shaded/goole/common/collect/Multimap;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2.1;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2.1;"
    :cond_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 255
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->this$2:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {v4, v5, v2}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->filterCollection(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 258
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 262
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_0
.end method
