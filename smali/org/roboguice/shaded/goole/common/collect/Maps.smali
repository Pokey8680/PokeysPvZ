.class public final Lorg/roboguice/shaded/goole/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Maps$DescendingMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$Values;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableKeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedKeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredMapValues;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntries;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$ValueDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3451
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Ljava/util/Set;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/SortedSet;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "x0"    # Ljava/util/NavigableSet;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map$Entry;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public static asConverter(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/base/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TA;TB;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Converter",
            "<TA;TB;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 1313
    .local p0, "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TA;TB;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$BiMapConverter;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    return-object v0
.end method

.method static asEntryToEntryFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1865
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$11;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$11;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1831
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$9;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$9;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<TK;TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$7;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 677
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 678
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asMap(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    .restart local p0    # "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$AsMapView;-><init>(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)V

    goto :goto_0
.end method

.method public static asMap(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 751
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$NavigableAsMapView;-><init>(Ljava/util/NavigableSet;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static asMap(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 713
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsAsMapSortedSet(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static asMapEntryIterator(Ljava/util/Set;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 833
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$2;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$2;-><init>(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method static asMapSortedIgnoreNavigable(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TK;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedAsMapView;-><init>(Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method static asValueToValueFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;TV1;TV2;>;TK;)",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1817
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$8;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$8;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1
    .param p0, "expectedSize"    # I

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 205
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3412
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3413
    const/4 v0, 0x0

    .line 3415
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static containsKeyImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3388
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static containsValueImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3395
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v2, p0, Ljava/util/SortedMap;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 383
    check-cast v1, Ljava/util/SortedMap;

    .line 384
    .local v1, "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference;

    move-result-object v0

    .line 387
    .end local v1    # "sortedLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps;->difference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;

    move-result-object v0

    goto :goto_0
.end method

.method public static difference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;)Lorg/roboguice/shaded/goole/common/collect/MapDifference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 413
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<-TV;>;"
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 416
    .local v3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 417
    .local v4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 418
    .local v5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .local v6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference<TV;>;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 419
    invoke-static/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 420
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/roboguice/shaded/goole/common/collect/Maps$MapDifferenceImpl;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static difference(Ljava/util/SortedMap;Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/SortedMapDifference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "left":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    .line 598
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {v7}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v3

    .line 599
    .local v3, "onlyOnLeft":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v4

    .line 600
    .local v4, "onlyOnRight":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-interface {v4, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 601
    invoke-static {v7}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v5

    .line 602
    .local v5, "onBoth":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v7}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v6

    .line 604
    .local v6, "differences":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/collect/Maps;->doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 605
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/roboguice/shaded/goole/common/collect/Maps$SortedMapDifferenceImpl;-><init>(Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private static doDifference(Ljava/util/Map;Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;",
            "Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "left":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "right":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "valueEquivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<-TV;>;"
    .local p3, "onlyOnLeft":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p4, "onlyOnRight":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "onBoth":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p6, "differences":Ljava/util/Map;, "Ljava/util/Map<TK;Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference<TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 429
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 430
    .local v2, "leftKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 431
    .local v3, "leftValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 433
    .local v4, "rightValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p2, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    invoke-interface {p5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_0
    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/collect/Maps$ValueDifferenceImpl;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapDifference$ValueDifference;

    move-result-object v5

    invoke-interface {p6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    .end local v4    # "rightValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "leftKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "leftValue":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3442
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 3443
    const/4 v1, 0x1

    .line 3448
    :goto_0
    return v1

    .line 3444
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 3445
    check-cast v0, Ljava/util/Map;

    .line 3446
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 3448
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2413
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 2414
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    .line 2419
    :goto_0
    return-object v0

    .line 2415
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 2416
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    goto :goto_0

    .line 2418
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 2505
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    .end local p0    # "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2458
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsFilterSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2542
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    .end local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    goto :goto_0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2553
    .local p0, "map":Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v2, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v0
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 2876
    .local p0, "map":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$600(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2878
    .local v0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;->access$700(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2774
    .local p0, "map":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2776
    .local v0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3017
    .local p0, "map":Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->predicate:Lorg/roboguice/shaded/goole/common/base/Predicate;

    invoke-static {v1, p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->and(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 3018
    .local v0, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntryBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2118
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    instance-of v1, p0, Ljava/util/SortedMap;

    if-eqz v1, :cond_0

    .line 2119
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterKeys(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v1

    .line 2125
    :goto_0
    return-object v1

    .line 2120
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v1, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v1, :cond_1

    .line 2121
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterKeys(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v1

    goto :goto_0

    .line 2123
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    .line 2125
    .local v0, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<Ljava/util/Map$Entry<TK;*>;>;"
    instance-of v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    if-eqz v1, :cond_2

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$AbstractFilteredMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredKeyMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public static filterKeys(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 2203
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2165
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterKeys(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2233
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    .local p1, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2234
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method static filterSortedIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2464
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "entryPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    .end local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterFiltered(Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$FilteredEntrySortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2268
    .local p0, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 2269
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    .line 2273
    :goto_0
    return-object v0

    .line 2270
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    if-eqz v0, :cond_1

    .line 2271
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/BiMap;

    .end local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterValues(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    goto :goto_0

    .line 2273
    .restart local p0    # "unfiltered":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static filterValues(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 2346
    .local p0, "unfiltered":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2309
    .local p0, "unfiltered":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2379
    .local p0, "unfiltered":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    .local p1, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->filterEntries(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static fromProperties(Ljava/util/Properties;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            ")",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "java.util.Properties"
    .end annotation

    .prologue
    .line 1185
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1187
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1189
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1192
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 1207
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immutableEnumMap(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .prologue
    .line 150
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    instance-of v3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 152
    check-cast v2, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;

    .line 161
    :goto_0
    return-object v2

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+TV;>;"
    :cond_2
    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v2

    goto :goto_0
.end method

.method static keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3516
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static keyPredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TK;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;>;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p0, "keyPredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TK;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static newEnumMap(Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;+TV;>;)",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newHashMap(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newHashMapWithExpectedSize(I)Ljava/util/HashMap;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "K:TC;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TC;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static newTreeMap(Ljava/util/SortedMap;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;+TV;>;)",
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static orNaturalOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .param p0    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 641
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-eqz p0, :cond_0

    .line 644
    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :goto_0
    return-object p0

    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object p0

    goto :goto_0
.end method

.method static putAllImpl(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3469
    .local p0, "self":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3470
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3472
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method static removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3432
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 3433
    const/4 v0, 0x0

    .line 3435
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static removeOnlyNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet",
            "<TE;>;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 1024
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$5;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static removeOnlySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$3;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$3;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static removeOnlySortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$4;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v1, 0x0

    .line 3359
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3365
    :goto_0
    return v1

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3364
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3344
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3350
    :goto_0
    return-object v1

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3349
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3350
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3374
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3380
    :goto_0
    return-object v1

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3379
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3380
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static synchronizedBiMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1391
    .local p0, "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->biMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 3290
    .local p0, "navigableMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Synchronized;->navigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 1097
    .local p0, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TK;>;"
    .local p1, "valueFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->toMap(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TK;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 1114
    .local p0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    .local p1, "valueFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;TV;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1117
    .local v0, "builder":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1119
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1121
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3458
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3460
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 3461
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1640
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1641
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1643
    :goto_0
    return-object v0

    .restart local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    goto :goto_0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 1761
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1701
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1767
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1845
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$10;

    invoke-direct {v0, p1, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$10;-><init>(Ljava/util/Map$Entry;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 1583
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1140
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->uniqueIndex(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public static uniqueIndex(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV;TK;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1162
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1164
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1166
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v2

    return-object v2
.end method

.method public static unmodifiableBiMap(Lorg/roboguice/shaded/goole/common/collect/BiMap;)Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1409
    .local p0, "bimap":Lorg/roboguice/shaded/goole/common/collect/BiMap;, "Lorg/roboguice/shaded/goole/common/collect/BiMap<+TK;+TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableBiMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/BiMap;Lorg/roboguice/shaded/goole/common/collect/BiMap;)V

    return-object v0
.end method

.method static unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$6;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1220
    .local p0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 447
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    .line 449
    .restart local p0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 3085
    .local p0, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;

    if-eqz v0, :cond_0

    .line 3089
    .end local p0    # "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :goto_0
    return-object p0

    .restart local p0    # "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static unmodifiableOrNull(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3094
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->unmodifiableEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method static valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static valueIterator(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "entryIterator":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)V

    return-object v0
.end method

.method static valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<*TV;>;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3521
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static valuePredicateOnEntries(Lorg/roboguice/shaded/goole/common/base/Predicate;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TV;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2085
    .local p0, "valuePredicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TV;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/base/Predicates;->compose(Lorg/roboguice/shaded/goole/common/base/Predicate;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method