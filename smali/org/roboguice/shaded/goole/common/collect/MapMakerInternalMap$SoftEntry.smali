.class Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TK;>;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final next:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile valueReference:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
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
    .line 1173
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1240
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->unset()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    .line 1174
    iput p3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->hash:I

    .line 1175
    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->next:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1176
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1186
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .locals 1

    .prologue
    .line 1256
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1180
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1261
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->next:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

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
    .line 1218
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1196
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1228
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    .line 1206
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1244
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1191
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1233
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1211
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry<TK;TV;>;"
    .local p1, "valueReference":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    .line 1250
    .local v0, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftEntry;->valueReference:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;

    .line 1251
    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;->clear(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 1252
    return-void
.end method
