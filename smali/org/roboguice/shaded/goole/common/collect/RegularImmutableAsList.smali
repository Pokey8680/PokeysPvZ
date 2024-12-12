.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.source "RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList",
        "<TE;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# instance fields
.field private final delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p2, "delegateList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<+TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    .line 36
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 37
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    .line 41
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "not present in emulated superclass"
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegate:Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    return-object v0
.end method

.method delegateList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<+TE;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
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
    .line 66
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 28
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;->delegateList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->listIterator(I)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method
