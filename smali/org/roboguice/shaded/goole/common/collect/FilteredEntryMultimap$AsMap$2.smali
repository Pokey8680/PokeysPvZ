.class Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;)V
    .locals 0

    .prologue
    .line 239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;)V

    return-object v0
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->this$1:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->not(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->removeEntriesIf(Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap.2;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$AsMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
