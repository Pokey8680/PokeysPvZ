.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
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
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    .prologue
    .line 1311
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1324
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
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
    .line 1318
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;)V

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
    .line 1314
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1328
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.AsMap.AsMapEntries;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1329
    const/4 v1, 0x0

    .line 1333
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1331
    check-cast v0, Ljava/util/Map$Entry;

    .line 1332
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$400(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)I

    .line 1333
    const/4 v1, 0x1

    goto :goto_0
.end method
