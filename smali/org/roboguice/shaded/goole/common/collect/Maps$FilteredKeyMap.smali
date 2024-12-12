.class Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2656
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    .local p1, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    .local p3, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p3}, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 2657
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    .line 2658
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2675
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 2
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
    .line 2662
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2667
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->filter(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
