.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.source "ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$EntryCollection;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$FieldSettersHolder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$BuilderMultimap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;+",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final transient size:I


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;+",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<TK;+Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TV;>;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;-><init>()V

    .line 322
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 323
    iput p2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->size:I

    .line 324
    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    instance-of v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 292
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    .line 294
    .local v0, "kvMultimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    .end local v0    # "kvMultimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->copyOf(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    goto :goto_0
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    invoke-static {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    invoke-static/range {p0 .. p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->asMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 445
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 450
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
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
    .line 482
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->createEntries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$EntryCollection;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method createKeys()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Keys;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method bridge synthetic createKeys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->createKeys()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->createValues()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method createValues()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    return-object v0
.end method

.method bridge synthetic entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->entryIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
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
    .line 557
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract get(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 438
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    return-object v0
.end method

.method public bridge synthetic keys()Lorg/roboguice/shaded/goole/common/collect/Multiset;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->keys()Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lorg/roboguice/shaded/goole/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->size:I

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->valueIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$2;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$2;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    return-object v0
.end method
