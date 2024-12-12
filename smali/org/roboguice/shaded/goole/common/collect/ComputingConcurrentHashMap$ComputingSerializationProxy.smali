.class final Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingSerializationProxy"
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
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;Lorg/roboguice/shaded/goole/common/base/Function;)V
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
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "removalListener":Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener<-TK;-TV;>;"
    .local p12, "delegate":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TK;TV;>;"
    .local p13, "computingFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;+TV;>;"
    invoke-direct/range {p0 .. p12}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$AbstractSerializationProxy;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;Lorg/roboguice/shaded/goole/common/base/Equivalence;Lorg/roboguice/shaded/goole/common/base/Equivalence;JJIILorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;Ljava/util/concurrent/ConcurrentMap;)V

    .line 398
    iput-object p13, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 399
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
    .line 408
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 409
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readMapMaker(Ljava/io/ObjectInputStream;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    .line 410
    .local v0, "mapMaker":Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 411
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->readEntries(Ljava/io/ObjectInputStream;)V

    .line 412
    return-void
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
    .line 402
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 403
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    .line 404
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 415
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputingSerializationProxy;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
