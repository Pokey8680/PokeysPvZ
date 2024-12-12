.class Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 924
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 924
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet.1;"
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;->transform(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method transform(Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Multisets$ElementSet.1;"
    .local p1, "entry":Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;, "Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
