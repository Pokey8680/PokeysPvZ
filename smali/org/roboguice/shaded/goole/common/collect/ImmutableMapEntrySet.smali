.class abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 46
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 47
    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;->map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 51
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return v2
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;->map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method abstract map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;->map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "serialization"
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;->map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet$EntrySetSerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V

    return-object v0
.end method
