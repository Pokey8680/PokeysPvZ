.class Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue;
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
.field nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue;)V
    .locals 0

    .prologue
    .line 3240
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractReferenceEntry;-><init>()V

    .line 3250
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3262
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 3244
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3254
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

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
    .line 3266
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 3248
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
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
    .line 3259
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3260
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
    .line 3271
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue.1;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ExpirationQueue$1;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 3272
    return-void
.end method
