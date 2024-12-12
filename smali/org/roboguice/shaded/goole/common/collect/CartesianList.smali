.class final Lorg/roboguice/shaded/goole/common/collect/CartesianList;
.super Ljava/util/AbstractList;
.source "CartesianList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final transient axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient axesSizeProduct:[I


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    .local p1, "axes":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 55
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 56
    .local v0, "axesSizeProduct":[I
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    aput v4, v0, v3

    .line 58
    :try_start_0
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 59
    add-int/lit8 v3, v2, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v4, v3}, Lorg/roboguice/shaded/goole/common/math/IntMath;->checkedMultiply(II)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 62
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cartesian product too large; must have size at most Integer.MAX_VALUE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v1    # "e":Ljava/lang/ArithmeticException;
    .restart local v2    # "i":I
    :cond_0
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axesSizeProduct:[I

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/CartesianList;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/CartesianList;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/roboguice/shaded/goole/common/collect/CartesianList;II)I
    .locals 1
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/collect/CartesianList;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->getAxisIndexForProductIndex(II)I

    move-result v0

    return v0
.end method

.method static create(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TE;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "lists":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+TE;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 43
    .local v0, "axesBuilder":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<Ljava/util/List<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 44
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v1

    .line 45
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v4

    .line 50
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    :goto_1
    return-object v4

    .line 48
    .restart local v1    # "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 50
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    :cond_1
    new-instance v4, Lorg/roboguice/shaded/goole/common/collect/CartesianList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/roboguice/shaded/goole/common/collect/CartesianList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    goto :goto_1
.end method

.method private getAxisIndexForProductIndex(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "axis"    # I

    .prologue
    .line 70
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axesSizeProduct:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    div-int v1, p1, v0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    const/4 v4, 0x0

    .line 104
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v4

    .line 118
    :goto_0
    return v3

    :cond_0
    move-object v2, p1

    .line 107
    check-cast v2, Ljava/util/List;

    .line 108
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v5

    if-eq v3, v5, :cond_1

    move v3, v4

    .line 109
    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 112
    .local v1, "itr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 114
    .local v0, "index":I
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 115
    goto :goto_0

    .line 118
    .end local v0    # "index":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 34
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->get(I)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkElementIndex(II)I

    .line 76
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/CartesianList$1;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/CartesianList$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/CartesianList;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 99
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/CartesianList;, "Lorg/roboguice/shaded/goole/common/collect/CartesianList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/CartesianList;->axesSizeProduct:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
