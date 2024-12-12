.class final enum Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength$2;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->identity()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference;
    .locals 2
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TV;I)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "entry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$SoftValueReference;

    iget-object v1, p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedSoftValueReference;

    iget-object v1, p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeightedSoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;I)V

    goto :goto_0
.end method
