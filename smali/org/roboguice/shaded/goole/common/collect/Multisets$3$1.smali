.class Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$3;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIterator",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$3;

.field final synthetic val$iterator1:Ljava/util/Iterator;

.field final synthetic val$iterator2:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$3;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$3;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->computeNext()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 559
    .local v2, "entry1":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 560
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$3;

    iget-object v5, v5, Lorg/roboguice/shaded/goole/common/collect/Multisets$3;->val$multiset2:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v5, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    add-int v0, v4, v5

    .line 561
    .local v0, "count":I
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v4

    .line 570
    .end local v0    # "count":I
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "entry1":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    :goto_0
    return-object v4

    .line 563
    :cond_0
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 564
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->val$iterator2:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 565
    .local v3, "entry2":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 566
    .restart local v1    # "element":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$3;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/collect/Multisets$3;->val$multiset1:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v4, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 567
    invoke-interface {v3}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-static {v1, v4}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v4

    goto :goto_0

    .line 570
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v3    # "entry2":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<+TE;>;"
    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$3$1;->endOfData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    goto :goto_0
.end method
