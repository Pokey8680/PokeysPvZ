.class final Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;
.super Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;, "Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/collect/Iterables$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/collect/Iterables$1;

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;, "Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;, "Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;, "Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method