.class final Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonTerminalBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nextInValueBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V
    .locals 0
    .param p3    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "nextInKeyBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p4, "nextInValueBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 157
    iput-object p4, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 158
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V
    .locals 0
    .param p2    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    .local p1, "contents":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p2, "nextInKeyBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p3, "nextInValueBucket":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V

    .line 164
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 165
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 166
    return-void
.end method


# virtual methods
.method getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInKeyBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object v0
.end method

.method getNextInValueBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;->nextInValueBucket:Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object v0
.end method
