.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3592
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 3694
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3695
    .local v0, "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3696
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3697
    .local v1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3698
    move-object v0, v1

    .line 3699
    goto :goto_0

    .line 3701
    .end local v1    # "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3702
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3703
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3673
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3674
    .local v0, "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3679
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3707
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$2;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->offer(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    return v0
.end method

.method public offer(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3632
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3635
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3636
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3638
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3643
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3644
    .local v0, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3591
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->poll()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3649
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3650
    .local v0, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3651
    const/4 v0, 0x0

    .line 3655
    .end local v0    # "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object v0

    .line 3654
    .restart local v0    # "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3661
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3662
    .local v0, "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 3663
    .local v2, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3664
    .local v1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-static {v2, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->connectWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3665
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullifyWriteOrder(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 3667
    sget-object v3, Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/LocalCache$NullEntry;

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3684
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    const/4 v1, 0x0

    .line 3685
    .local v1, "size":I
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-eq v0, v2, :cond_0

    .line 3687
    add-int/lit8 v1, v1, 0x1

    .line 3686
    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3689
    :cond_0
    return v1
.end method
