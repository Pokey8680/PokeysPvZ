.class final Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;
.super Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.source "MapMaker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ComputingMapAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0
    .param p1, "mapMaker"    # Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    .local p2, "computingFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V

    .line 879
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 886
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter<TK;TV;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;->getOrCompute(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 893
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_0

    .line 894
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$ComputingMapAdapter;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 887
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v1

    .line 888
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 889
    .local v0, "cause":Ljava/lang/Throwable;
    const-class v3, Lorg/roboguice/shaded/goole/common/collect/ComputationException;

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Throwables;->propagateIfInstanceOf(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 890
    new-instance v3, Lorg/roboguice/shaded/goole/common/collect/ComputationException;

    invoke-direct {v3, v0}, Lorg/roboguice/shaded/goole/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 896
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v2
.end method
