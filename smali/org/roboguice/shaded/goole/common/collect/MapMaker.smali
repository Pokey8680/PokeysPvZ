.class public final Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.super Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$1;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalNotification;,
        Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final UNSET_INT:I = -0x1


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

.field maximumSize:I

.field nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

.field ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field useCustomMap:Z

.field valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 137
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;-><init>()V

    .line 117
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    .line 118
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    .line 119
    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    .line 124
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 125
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 137
    return-void
.end method

.method private checkExpiration(JLjava/util/concurrent/TimeUnit;)V
    .locals 11
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v6, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 396
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    move v0, v1

    :goto_2
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 397
    return-void

    :cond_0
    move v0, v2

    .line 392
    goto :goto_0

    :cond_1
    move v0, v2

    .line 394
    goto :goto_1

    :cond_2
    move v0, v2

    .line 396
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "concurrencyLevel"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "concurrency level was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    if-lez p1, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 244
    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    .line 245
    return-object p0

    :cond_0
    move v0, v2

    .line 241
    goto :goto_0

    :cond_1
    move v1, v2

    .line 243
    goto :goto_1
.end method

.method bridge synthetic expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 433
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    .line 434
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 436
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 439
    return-object p0
.end method

.method bridge synthetic expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 3
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->checkExpiration(JLjava/util/concurrent/TimeUnit;)V

    .line 382
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    .line 383
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->EXPIRED:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 387
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 388
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    goto :goto_0
.end method

.method getExpireAfterAccessNanos()J
    .locals 4

    .prologue
    .line 443
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    goto :goto_0
.end method

.method getExpireAfterWriteNanos()J
    .locals 4

    .prologue
    .line 400
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method getInitialCapacity()I
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    goto :goto_0
.end method

.method getKeyEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 2
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
    .line 156
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getKeyStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method getTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Ticker;

    return-object v0
.end method

.method getValueStrength()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic initialCapacity(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public initialCapacity(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "initialCapacity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "initial capacity was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 173
    if-ltz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 174
    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    .line 175
    return-object p0

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 173
    goto :goto_1
.end method

.method bridge synthetic keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .prologue
    .local p1, "equivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 151
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 152
    return-object p0

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0
.end method

.method makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    .local p1, "computingFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;+TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_0

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V

    goto :goto_0
.end method

.method makeCustomMap()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "MapMakerInternalMap"
    .end annotation

    .prologue
    .line 522
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    return-object v0
.end method

.method public makeMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 507
    iget-boolean v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getInitialCapacity()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->getConcurrencyLevel()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 510
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1

    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    :goto_1
    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    goto :goto_1
.end method

.method bridge synthetic maximumSize(I)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method maximumSize(I)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "size"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    if-ltz p1, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "maximum size must not be negative"

    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 211
    iput p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    .line 212
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 213
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;->SIZE:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->nullRemovalCause:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalCause;

    .line 217
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_0
.end method

.method removalListener(Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;)Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .prologue
    .local p1, "listener":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<TK;TV;>;"
    const/4 v2, 0x1

    .line 483
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 487
    move-object v0, p0

    .line 488
    .local v0, "me":Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;, "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    iput-object v1, v0, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    .line 489
    iput-boolean v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 490
    return-object v0

    .line 483
    .end local v0    # "me":Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;, "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setKeyStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "strength"    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .line 272
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    sget-object v3, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq v0, v3, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "Soft keys are not supported"

    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 273
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_1

    .line 275
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 277
    :cond_1
    return-object p0

    :cond_2
    move v0, v2

    .line 270
    goto :goto_0
.end method

.method setValueStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 6
    .param p1, "strength"    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 340
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Value strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    .line 342
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->STRONG:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_0

    .line 344
    iput-boolean v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->useCustomMap:Z

    .line 346
    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 340
    goto :goto_0
.end method

.method public bridge synthetic softValues()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->softValues()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public softValues()Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.SoftReference"
    .end annotation

    .prologue
    .line 336
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->SOFT:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->setValueStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, -0x1

    .line 597
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 598
    .local v0, "s":Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    if-eq v1, v3, :cond_0

    .line 599
    const-string v1, "initialCapacity"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->initialCapacity:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 601
    :cond_0
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    if-eq v1, v3, :cond_1

    .line 602
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->concurrencyLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 604
    :cond_1
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    if-eq v1, v3, :cond_2

    .line 605
    const-string v1, "maximumSize"

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->maximumSize:I

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 607
    :cond_2
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 608
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterWriteNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 610
    :cond_3
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 611
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->expireAfterAccessNanos:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 613
    :cond_4
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_5

    .line 614
    const-string v1, "keyStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 616
    :cond_5
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_6

    .line 617
    const-string v1, "valueStrength"

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->valueStrength:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 619
    :cond_6
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    if-eqz v1, :cond_7

    .line 620
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 622
    :cond_7
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    if-eqz v1, :cond_8

    .line 623
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    .line 625
    :cond_8
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic weakKeys()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 266
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->setKeyStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic weakValues()Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->weakValues()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1
    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;->WEAK:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->setValueStrength(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method