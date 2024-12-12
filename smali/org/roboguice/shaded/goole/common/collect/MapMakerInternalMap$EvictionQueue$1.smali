.class Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue;)V
    .locals 0

    .prologue
    .line 3112
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry;-><init>()V

    .line 3114
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3126
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3118
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3130
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3123
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue.1;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3124
    return-void
.end method

.method public setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3135
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue.1;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EvictionQueue$1;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3136
    return-void
.end method
