.class Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->entryIterator()Ljava/util/Iterator;
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
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$4;

.field final synthetic val$iterator1:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$4;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$4;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->val$iterator1:Ljava/util/Iterator;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->computeNext()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 618
    :cond_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 619
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->val$iterator1:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .line 620
    .local v2, "entry1":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 621
    .local v1, "element":Ljava/lang/Object;, "TE;"
    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$4;

    iget-object v4, v4, Lorg/roboguice/shaded/goole/common/collect/Multisets$4;->val$multiset2:Lorg/roboguice/shaded/goole/common/collect/Multiset;

    invoke-interface {v4, v1}, Lorg/roboguice/shaded/goole/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v4

    sub-int v0, v3, v4

    .line 622
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 623
    invoke-static {v1, v0}, Lorg/roboguice/shaded/goole/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    move-result-object v3

    .line 626
    .end local v0    # "count":I
    .end local v1    # "element":Ljava/lang/Object;, "TE;"
    .end local v2    # "entry1":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Multisets$4$1;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    goto :goto_0
.end method