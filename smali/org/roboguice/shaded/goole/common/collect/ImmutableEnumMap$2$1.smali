.class Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "ImmutableEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;)V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->this$1:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;

    iget-object v0, v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 114
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2.1;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2.1;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$2$1;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method