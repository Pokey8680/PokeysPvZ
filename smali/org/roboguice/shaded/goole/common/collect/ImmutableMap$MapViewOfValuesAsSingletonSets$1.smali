.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet",
        "<TK;",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)V
    .locals 0

    .prologue
    .line 475
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 475
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 483
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method map()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    return-object v0
.end method
