.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 3367
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 3369
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3373
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    .line 3374
    .local v3, "map":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<**>;"
    if-nez v3, :cond_0

    .line 3375
    new-instance v5, Ljava/util/concurrent/CancellationException;

    invoke-direct {v5}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v5

    .line 3378
    :cond_0
    iget-object v0, v3, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->segments:[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;

    .local v0, "arr$":[Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 3379
    .local v4, "segment":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<**>;"
    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 3378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3381
    .end local v4    # "segment":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<**>;"
    :cond_1
    return-void
.end method
