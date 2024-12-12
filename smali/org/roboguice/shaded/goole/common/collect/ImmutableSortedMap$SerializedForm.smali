.class Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 683
    .local p1, "sortedMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<**>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V

    .line 684
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 685
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 687
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    .line 688
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap$SerializedForm;->createMap(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
