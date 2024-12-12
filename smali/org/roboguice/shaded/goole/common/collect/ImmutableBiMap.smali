.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field private static final EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    instance-of v3, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 194
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    .line 197
    .local v0, "bimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->isPartialView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    .end local v0    # "bimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    :goto_0
    return-object v0

    .line 201
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 202
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<**>;"
    array-length v3, v1

    packed-switch v3, :pswitch_data_0

    .line 210
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Ljava/util/Map$Entry;)V

    goto :goto_0

    .line 204
    :pswitch_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    goto :goto_0

    .line 207
    :pswitch_1
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 208
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Object;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Object;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Object;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Object;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
