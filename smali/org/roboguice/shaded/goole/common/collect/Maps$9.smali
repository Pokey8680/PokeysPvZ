.class final Lorg/roboguice/shaded/goole/common/collect/Maps$9;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV1;>;TV2;>;"
    }
.end annotation


# instance fields
.field final synthetic val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V
    .locals 0

    .prologue
    .line 1832
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$9;->val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1832
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$9;->apply(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)TV2;"
        }
    .end annotation

    .prologue
    .line 1835
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$9;->val$transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;->transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method