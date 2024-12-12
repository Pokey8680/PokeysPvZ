.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    .local p1, "multimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;-><init>()V

    .line 645
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    .line 646
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 650
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 3
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    iget-object v2, v2, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 661
    .local v1, "valueCollection":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TV;>;"
    invoke-virtual {v1, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    .line 662
    goto :goto_0

    .line 663
    .end local v1    # "valueCollection":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TV;>;"
    :cond_0
    return p2
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 641
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->valueIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 668
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Values;->multimap:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
