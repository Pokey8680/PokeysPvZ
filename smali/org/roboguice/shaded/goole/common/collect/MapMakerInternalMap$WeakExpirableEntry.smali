.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakExpirableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakEntry",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1532
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->time:J

    .line 1544
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1557
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1528
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1536
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->time:J

    return-wide v0
.end method

.method public getNextExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1549
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1562
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1541
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->time:J

    .line 1542
    return-void
.end method

.method public setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1554
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1555
    return-void
.end method

.method public setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WeakExpirableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1568
    return-void
.end method
