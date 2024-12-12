.class Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;
.super Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet<TE;>;"
    .local p1, "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    .line 768
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 771
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 775
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet;, "Lorg/roboguice/shaded/goole/common/collect/Sets$FilteredSet<TE;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
