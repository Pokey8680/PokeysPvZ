.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;
.super Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/ForwardingCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final loader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field final maxWeight:J

.field final removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

.field final valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

.field final weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/Weigher",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJJLorg/roboguice/shaded/goole/common/cache/Weigher;ILorg/roboguice/shaded/goole/common/cache/RemovalListener;Lorg/roboguice/shaded/goole/common/base/Ticker;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V
    .locals 3
    .param p1, "keyStrength"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .param p2, "valueStrength"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maxWeight"    # J
    .param p12, "concurrencyLevel"    # I
    .param p14, "ticker"    # Lorg/roboguice/shaded/goole/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lorg/roboguice/shaded/goole/common/cache/Weigher",
            "<TK;TV;>;I",
            "Lorg/roboguice/shaded/goole/common/cache/RemovalListener",
            "<-TK;-TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Ticker;",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4597
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "weigher":Lorg/roboguice/shaded/goole/common/cache/Weigher;, "Lorg/roboguice/shaded/goole/common/cache/Weigher<TK;TV;>;"
    .local p13, "removalListener":Lorg/roboguice/shaded/goole/common/cache/RemovalListener;, "Lorg/roboguice/shaded/goole/common/cache/RemovalListener<-TK;-TV;>;"
    .local p15, "loader":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<-TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/ForwardingCache;-><init>()V

    .line 4598
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 4599
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    .line 4600
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 4601
    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 4602
    iput-wide p5, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4603
    iput-wide p7, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4604
    iput-wide p9, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4605
    iput-object p11, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    .line 4606
    iput p12, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4607
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    .line 4608
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Ticker;->systemTicker()Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-result-object v1

    move-object/from16 v0, p14

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->NULL_TICKER:Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-object/from16 v0, p14

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 p14, 0x0

    .end local p14    # "ticker":Lorg/roboguice/shaded/goole/common/base/Ticker;
    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    .line 4610
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->loader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    .line 4611
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4576
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterWriteNanos:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->expireAfterAccessNanos:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->maxWeight:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    move-object/from16 v0, p1

    iget v15, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->concurrencyLevel:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->defaultLoader:Lorg/roboguice/shaded/goole/common/cache/CacheLoader;

    move-object/from16 v18, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v18}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJJLorg/roboguice/shaded/goole/common/cache/Weigher;ILorg/roboguice/shaded/goole/common/cache/RemovalListener;Lorg/roboguice/shaded/goole/common/base/Ticker;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    .line 4589
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 4645
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4646
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    .line 4647
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    .line 4648
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4651
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4556
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lorg/roboguice/shaded/goole/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4656
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lorg/roboguice/shaded/goole/common/cache/Cache;

    return-object v0
.end method

.method recreateCacheBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 4614
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setKeyStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->setValueStrength(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Strength;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->keyEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->valueEquivalence(Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->concurrencyLevel(I)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lorg/roboguice/shaded/goole/common/cache/RemovalListener;

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->removalListener(Lorg/roboguice/shaded/goole/common/cache/RemovalListener;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    .line 4621
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->strictParsing:Z

    .line 4622
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 4623
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4625
    :cond_0
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 4626
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4628
    :cond_1
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    sget-object v2, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$OneWeigher;

    if-eq v1, v2, :cond_4

    .line 4629
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lorg/roboguice/shaded/goole/common/cache/Weigher;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weigher(Lorg/roboguice/shaded/goole/common/cache/Weigher;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4630
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 4631
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumWeight(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4638
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    if-eqz v1, :cond_3

    .line 4639
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lorg/roboguice/shaded/goole/common/base/Ticker;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->ticker(Lorg/roboguice/shaded/goole/common/base/Ticker;)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 4641
    :cond_3
    return-object v0

    .line 4634
    :cond_4
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 4635
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    goto :goto_0
.end method
