.class Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;
.super Ljava/lang/Object;
.source "FluentIterable.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FromIterableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function",
        "<",
        "Ljava/lang/Iterable",
        "<TE;>;",
        "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 474
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 474
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    check-cast p1, Ljava/lang/Iterable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;->apply(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/FluentIterable",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction;, "Lorg/roboguice/shaded/goole/common/collect/FluentIterable$FromIterableFunction<TE;>;"
    .local p1, "fromObject":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/FluentIterable;

    move-result-object v0

    return-object v0
.end method