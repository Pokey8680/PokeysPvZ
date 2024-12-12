.class Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableEnumMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->createKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->access$000(Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->size()I

    move-result v0

    return v0
.end method
