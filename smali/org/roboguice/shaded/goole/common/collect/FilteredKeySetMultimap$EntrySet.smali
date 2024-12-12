.class Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap",
        "<TK;TV;>.Entries;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;)V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap$Entries;-><init>(Lorg/roboguice/shaded/goole/common/collect/FilteredKeyMultimap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap$EntrySet;, "Lorg/roboguice/shaded/goole/common/collect/FilteredKeySetMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
