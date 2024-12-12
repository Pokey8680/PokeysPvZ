.class public final Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 636
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 637
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 641
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 642
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 652
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;

    .line 653
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 679
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 666
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 692
    return-object p0
.end method

.method public bridge synthetic build()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 630
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->contents:[Ljava/lang/Object;

    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->size:I

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
