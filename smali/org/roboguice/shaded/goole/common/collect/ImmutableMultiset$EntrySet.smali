.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V
    .locals 0

    .prologue
    .line 356
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$1;

    .prologue
    .line 356
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    const/4 v2, 0x0

    .line 389
    instance-of v3, p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 390
    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 391
    .local v1, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 397
    .end local v1    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<*>;"
    :cond_0
    :goto_0
    return v2

    .line 394
    .restart local v1    # "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<*>;"
    :cond_1
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 395
    .local v0, "count":I
    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

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
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 384
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 409
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultiset;)V

    return-object v0
.end method