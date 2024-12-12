.class Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;)V
    .locals 0

    .prologue
    .line 299
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 299
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset.1;"
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->apply(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset.1;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/Multisets$FilteredMultiset;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
