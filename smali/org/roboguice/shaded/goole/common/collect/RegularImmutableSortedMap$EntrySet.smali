.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.source "RegularImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$1;

    .prologue
    .line 54
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;)V

    return-void
.end method


# virtual methods
.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/RegularImmutableSortedMap;

    return-object v0
.end method
