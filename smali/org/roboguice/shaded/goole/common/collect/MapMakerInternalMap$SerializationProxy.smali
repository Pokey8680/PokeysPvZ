.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .param p1, "keyStrength"    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .param p2, "valueStrength"    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maximumSize"    # I
    .param p10, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJII",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener",
            "<-TK;-TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3990
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "removalListener":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    invoke-direct/range {p0 .. p12}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 3992
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
    .line 4000
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4001
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    .line 4002
    .local v0, "mapMaker":Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 4003
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 4004
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4007
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3995
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3996
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 3997
    return-void
.end method
