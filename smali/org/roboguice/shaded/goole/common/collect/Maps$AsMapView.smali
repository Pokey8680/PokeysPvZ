.class Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final function:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 764
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    .line 765
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 766
    return-void
.end method


# virtual methods
.method backingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 812
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 813
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 785
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->access$200(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 775
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->transform(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    move-object v0, p1

    .line 793
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 795
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 801
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    move-object v0, p1

    .line 804
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 806
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 780
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
