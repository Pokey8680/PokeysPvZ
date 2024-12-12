.class abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "unnecessary"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    invoke-static {p1, p2}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    .local p1, "contents":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<TK;TV;>;"
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method abstract getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method abstract getNextInValueBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
