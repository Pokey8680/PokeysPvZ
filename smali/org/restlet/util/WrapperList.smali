.class public Lorg/restlet/util/WrapperList;
.super Ljava/lang/Object;
.source "WrapperList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 71
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/restlet/util/WrapperList;->delegate:Ljava/util/List;

    .line 82
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p2, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 144
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 169
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getDelegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    iget-object v0, p0, Lorg/restlet/util/WrapperList;->delegate:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 211
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 235
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 275
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    new-instance v0, Lorg/restlet/util/WrapperList;

    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    .local p0, "this":Lorg/restlet/util/WrapperList;, "Lorg/restlet/util/WrapperList<TE;>;"
    invoke-virtual {p0}, Lorg/restlet/util/WrapperList;->getDelegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
