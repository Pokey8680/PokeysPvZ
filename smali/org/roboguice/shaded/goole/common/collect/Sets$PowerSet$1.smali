.class Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 1299
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1299
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet.1;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;->get(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/Set;
    .locals 2
    .param p1, "setBits"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;, "Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet.1;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/Sets$PowerSet;->inputSet:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-direct {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets$SubSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    return-object v0
.end method
