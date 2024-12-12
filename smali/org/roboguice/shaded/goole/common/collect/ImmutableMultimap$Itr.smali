.class abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final mapIterator:Ljava/util/Iterator;
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

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

.field valueIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 532
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    .line 533
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->asMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 535
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->emptyIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;

    .prologue
    .line 532
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 541
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap<TK;TV;>.Itr<TT;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    .line 551
    .end local v0    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method abstract output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation
.end method
