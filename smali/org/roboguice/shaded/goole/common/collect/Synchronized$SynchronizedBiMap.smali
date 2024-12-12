.class Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/roboguice/shaded/goole/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "delegate":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    .local p3, "inverse":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1119
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .line 1120
    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .param p4, "x3"    # Lorg/roboguice/shaded/goole/common/collect/Synchronized$1;

    .prologue
    .line 1111
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1111
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1111
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1137
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1138
    :try_start_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 1144
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 1146
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .line 1149
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/BiMap;

    monitor-exit v1

    return-object v0

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1111
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1127
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1129
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
