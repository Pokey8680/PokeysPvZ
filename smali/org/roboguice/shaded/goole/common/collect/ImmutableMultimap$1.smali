.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;->entryIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap",
        "<TK;TV;>.Itr<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 557
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;->this$0:Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$Itr;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap;Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 557
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap.1;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap$1;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMultimap.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
