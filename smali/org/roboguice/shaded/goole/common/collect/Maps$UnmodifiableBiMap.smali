.class Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingMap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<+TK;+TV;>;"
        }
    .end annotation
.end field

.field inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field final unmodifiableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V
    .locals 1
    .param p2    # Lorg/roboguice/shaded/goole/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<+TK;+TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1421
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<+TK;+TV;>;"
    .local p2, "inverse":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;-><init>()V

    .line 1422
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    .line 1423
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .line 1424
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .line 1425
    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1413
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1428
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->unmodifiableMap:Ljava/util/Map;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1433
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 1438
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .line 1439
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TV;TK;>;"
    if-nez v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;

    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TV;TK;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1413
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1445
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    .line 1446
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->delegate:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    invoke-interface {v1}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;->values:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
